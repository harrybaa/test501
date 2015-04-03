/***
 * jquery local chat
 * @version v2.0 
 * @createDate -- 2012-5-28
 * @author hoojo
 * @email hoojo_@126.com
 * @blog http://hoojo.cnblogs.com & http://blog.csdn.net/IBM_hoojo
 * @requires jQuery v1.2.3 or later, send.message.editor-1.0.js
 * Copyright (c) 2012 M. hoo
 **/
 
;(function ($) {
 
    if (/1\.(0|1|2)\.(0|1|2)/.test($.fn.jquery) || /^1.1/.test($.fn.jquery)) {
        alert('WebIM requires jQuery v1.2.3 or later!  You are using v' + $.fn.jquery);
        return;
    }
    
    var faceTimed, count = 0;
    
    var _opts = defaultOptions = {
        version: 2.0,
        chat: "#chat",
        chatEl: function () {
            var $chat = _opts.chat;
            if ((typeof _opts.chat) == "string") {
                $chat = $(_opts.chat);
            } else if ((typeof _opts.chat) == "object") {
                if (!$chat.get(0)) {
                    $chat = $($chat);
                }
            } 
            return $chat;
        },
        sendMessageIFrame: function (receiverId) {
            return $("iframe[name='sendMessage" + receiverId + "']").get(0).contentWindow;
        },
        receiveMessageDoc: function (receiverId) {
            receiverId = receiverId || "";
            var docs = [];
            $.each($("iframe[name^='receiveMessage" + receiverId + "']"), function () {
                docs.push($(this.contentWindow.document));
            });
            return docs;
            //return $($("iframe[name^='receiveMessage" + receiverId + "']").get(0).contentWindow.document);
        },
        sender: "", // ������
        receiver: "", // ������
        setTitle: function (chatEl) {
            var receiver = this.getReceiver(chatEl);
            chatEl.find(".title").html("��" + receiver + "����Ի���");
        },
        getReceiver: function (chatEl) {
            var receiver = chatEl.attr("receiver");
            if (~receiver.indexOf("@")) {
                receiver = receiver.split("@")[0];
            }
            return receiver;
        },
        
        // ������Ϣiframe��ʽ
        receiveStyle: [
            '<html>',
                '<head><style type="text/css">',
                'body{border:0;margin:0;padding:3px;height:98%;cursor:text;background-color:white;font-size:12px;font-family:Courier,serif,monospace;}',
                '.msg{margin-left: 1em;}p{margin:0;padding:0;}.me{color: blue;}.you{color:green;}',
                '</style></head>',
                '<body></body>',
            '</html>'
        ].join(""),
        writeReceiveStyle: function (receiverId) {
            this.receiveMessageDoc(receiverId)[0].get(0).write(this.receiveStyle);
        },
        
        datetimeFormat: function (v) {
            if (~~v < 10) {
                return "0" + v;
            }
            return v;
        },
        getDatetime: function () {
            // ���õ�ǰ������ǰ
            var date = new Date();
            var datetime = date.getFullYear() + "-" + date.getMonth() + "-" + date.getDate();
            datetime = " " + _opts.datetimeFormat(date.getHours()) 
                        + ":" + _opts.datetimeFormat(date.getMinutes()) 
                        + ":" + _opts.datetimeFormat(date.getSeconds());
            return datetime;
        },
        
        /***
         * ������Ϣ�ĸ�ʽģ��                    
         * flag = true ��ʾ��ǰuser���Լ���������ǶԷ�
         **/ 
        receiveMessageTpl: function (userName, styleTpl, content, flag) {
            var userCls = flag ? "me" : "you";
            if (styleTpl && flag) {
                content = [ "<span style='", styleTpl, "'>", content, "</span>" ].join("");
            }
            return [
                '<p class="', userCls, '">', _opts.getDatetime(), '  ', userName, ':</p>',
                '<p class="msg">', content, '</p>'
            ].join("");
        },
        
        // �����ఴť�����¼�����htmlģ��
        sendMessageStyle: {
             cssStyle: {
                 bold: "font-weight: bold;",
                 underline: "text-decoration: underline;",
                 italic: "font-style: oblique;"
             },
             setStyle: function (style, val) {
                 if (val) {
                     _opts.sendMessageStyle[style] = val;
                 } else {
                     var styleVal = _opts.sendMessageStyle[style];
                     if (styleVal === undefined || !styleVal) {
                         _opts.sendMessageStyle[style] = true;
                     } else {
                         _opts.sendMessageStyle[style] = false;
                     }
                 }
             },
             getStyleTpl: function () {
                 var tpl = "";
                 $.each(_opts.sendMessageStyle, function (style, item) {
                     //alert(style + "#" + item + "#" + (typeof item));
                     if (item === true) {
                         tpl += _opts.sendMessageStyle.cssStyle[style];
                     } else if ((typeof item) === "string") {
                         //alert(style + "-------------" + sendMessageStyle[style]);
                         tpl += style + ":" + item + ";";
                     }
                 });
                 return tpl;
             }
        },
        // �������Ϣiframe����д��Ϣ
        writeReceiveMessage: function (receiverId, userName, content, flag) {
            if (content) {
                // ������Ϣ����ʽ
                var styleTpl = _opts.sendMessageStyle.getStyleTpl();
                var receiveMessageDoc = _opts.receiveMessageDoc(receiverId);
                $.each(receiveMessageDoc, function () {
                    var $body = this.find("body");
                    // �������Ϣ����д�뷢�͵�����
                    $body.append(_opts.receiveMessageTpl(userName, styleTpl, content, flag));
                    // �����������ײ�
                    this.scrollTop(this.height());
                });
            }
        },
        // ������Ϣ
        sendHandler: function ($chatMain) {
            var doc = $chatMain.find("iframe[name^='sendMessage']").get(0).contentWindow.document;
            
            var content = doc.body.innerHTML;
            content = $.trim(content);
            content = content.replace(new RegExp("<br>", "gm"), "");
            // ��ȡ�������͵�����
            if (content) {
                var sender = $chatMain.attr("sender");
                var receiverId = $chatMain.attr("id");
                // ��������д��Ϣ
                _opts.writeReceiveMessage(receiverId, sender, content, true);
                
                //############# XXX
                var receiver = $chatMain.find("#to").val();
                //var receiver = $chatMain.attr("receiver");
                // �ж��Ƿ����ֻ��˻Ự������Ǿͷ��ʹ�text������ͷ���html����
                var flag = _opts.isMobileClient(receiver);
                if (flag) {
                    var text = $(doc.body).text();
                    text = $.trim(text);
                    if (text) {
                        // Զ�̷�����Ϣ
                        remote.jsjac.chat.sendMessage(text, receiver);
                    }
                } else { // ���ֻ���ͨ�� ���Է���html����
                    var styleTpl = _opts.sendMessageStyle.getStyleTpl();
                    content = [ "<span style='", styleTpl, "'>", content, "</span>" ].join("");
                    remote.jsjac.chat.sendMessage(content, receiver);
                }
                
                // ��շ�������
                $(doc).find("body").html("");
            }
        }, 
        
        faceImagePath: "images/emotions/",
        faceElTpl: function (i) {
            return [
                "<img src='",
                this.faceImagePath,
                (i - 1),
                "fixed.bmp' gif='",
                this.faceImagePath,
                (i - 1),
                ".gif'/>"
            ].join("");
        },
        // ��������html elements
        createFaceElement: function ($chat) {
            var faces = [];
            for (var i = 1; i < 100; i++) {
                 faces.push(this.faceElTpl(i));
                 if (i % 11 == 0) {
                     faces.push("<br/>");
                 } 
            }
            $chat.find("#face").html(faces.join(""));
            this.faceHandler($chat);
        },
        // �������
        faceHandler: function ($chat) {
            $chat.find("#face img").click(function () {
                 $chat.find("#face").hide(150);
                 var imgEL = "<img src='" + $(this).attr("gif") + "'/>";
                 var $chatMain = $(this).parents(".chat-main");
                 var win = $chatMain.find("iframe[name^='sendMessage']").get(0).contentWindow;
                 var doc = win.document;
                 sendMessageEditor.insertAtCursor(imgEL, doc, win);
            });
            // ��������
            $chat.find("#face, #face img").mouseover(function () {
                window.clearTimeout(faceTimed);
            }).mouseout(function () {
                window.clearTimeout(faceTimed);
                faceTimed = window.setTimeout(function () {
                    $chat.find("#face").hide(150);
                }, 700);
            });
        },
        /***
         * ������Ϣ��������ť�¼�����
         **/
        toolBarHandler: function () {
            var $chat = $(this).parents(".chat-main");
            var targetCls = $(this).attr("class");
            if (targetCls == "face") {
                $chat.find("#face").show(150);
                window.clearTimeout(faceTimed);
                faceTimed = window.setTimeout(function () {
                    $chat.find("#face").hide(150);
                }, 1000);
            } else if (this.tagName == "DIV") {
                _opts.sendMessageStyle.setStyle(targetCls);
            } else if (this.tagName == "SELECT") {
                _opts.sendMessageStyle.setStyle($(this).attr("name"), $(this).val());
                if ($(this).attr("name") == "color") {
                    $(this).css("background-color", $(this).val());
                }
            }
            
            // ����sendMessage iframe��style css
            _opts.writeSendStyle();
        },
        // ����sendMessage iframe��style css
        writeSendStyle: function () {
            var styleTpl = _opts.sendMessageStyle.getStyleTpl();
            var styleEL = ['<style type="text/css">body{', styleTpl,'}</style>'].join("");
            
            $("body").find("iframe[name^='sendMessage']").each(function () {
                var $head = $(this.contentWindow.document).find("head");
                if ($head.find("style").size() > 1) {
                    $head.find("style:gt(0)").remove();
                }
                if (styleTpl) {
                    $head.append(styleEL);
                }
            });
        },                
        
        isMobileClient: function (receiver) {
            var moblieClients = ["iphone", "ipad", "ipod", "wp7", "android", "blackberry", "Spark", "warning", "symbian"];
            var flag = false;
            for (var i in moblieClients) {
                if (~receiver.indexOf(moblieClients[i])) {
                    return true;
                }
            }
            return false;
        },
 
        // �������htmlԪ��
        chatLayoutTemplate: function (userJID, sender, receiver, product, flag) {
            var display = "";
            if (flag) {
                display = "style='display: none;'";
            }
            return [
            '<div class="chat-main" id="', userJID,
                '" sender="', sender, '" receiver="', receiver, '">',
                    
                '<div id="chat"><div class="radius">',
                    '<table>',
                        '<tr>',
                            '<td colspan="3" class="title"></td>',
                        '</tr>',
                        '<tr>',
                            '<td class="receive-message">',
                                '<iframe name="receiveMessage', userJID,'" frameborder="0" width="100%" height="100%"></iframe>',
                            '</td>',
                            '<td rowspan="4" class="split" ', display, '></td>',
                            '<td rowspan="4" class="product-info" ', display, '>',
                                '<ul>',
                                    '<div class="header">��Ʒ����</div>',
                                    '<li class="pic">',
                                    '<img src="', product.pic, '"/></li>',
                                    '<li class="product-name">', product.name, '</li>',
                                    '<li class="price">�Ź��ۣ�<span>', product.price, '</span>Ԫ</li>',
                                    '<li class="market-price">�г��ۣ�<s><i>', product.marketPrice, '</i></s>Ԫ</li>',
                                    '<li>��ݹ�˾��', product.deliverOrgs, '</li>',
                                    '<li>�ֿ⣺', product.wareHouses, '</li>',
                                    product.skuAttrs,
                                '</ul>',
                            '</td>',
                        '</tr>',
                        '<tr class="tool-bar">',
                            '<td>',
                                '<select name="font-family" class="family">',
                                    '<option>����</option>',
                                    '<option>����</option>',
                                    '<option>��Բ</option>',
                                    '<option>�����п�</option>',
                                    '<option>���Ŀ���</option>',
                                    '<option>���Ŀ���</option>',
                                    '<option>���Ĳ���</option>',
                                    '<option>��������</option>',
                                    '<option>΢���ź�</option>',
                                    '<option>Fixedsys</option>',
                                '</select>',
                                
                                '<select name="font-size">',
                                    '<option value="12px">��С</option>',
                                    '<option value="10px">10</option>',
                                    '<option value="12px">12</option>',
                                    '<option value="14px">14</option>',
                                    '<option value="16px">16</option>',
                                    '<option value="18px">18</option>',
                                    '<option value="20px">20</option>',
                                    '<option value="24px">24</option>',
                                    '<option value="28px">28</option>',
                                    '<option value="36px">36</option>',
                                    '<option value="42px">42</option>',
                                    '<option value="52px">52</option>',
                                '</select>',
                                '<select name="color">',
                                    '<option value="" selected="selected">��ɫ</option>',
                                    '<option value="#000000" style="background-color:#000000"></option>',
                                    '<option value="#FFFFFF" style="background-color:#FFFFFF"></option>',
                                    '<option value="#008000" style="background-color:#008000"></option>',
                                    '<option value="#800000" style="background-color:#800000"></option>',
                                    '<option value="#808000" style="background-color:#808000"></option>',
                                    '<option value="#000080" style="background-color:#000080"></option>',
                                    '<option value="#800080" style="background-color:#800080"></option>',
                                    '<option value="#808080" style="background-color:#808080"></option>',
                                    '<option value="#FFFF00" style="background-color:#FFFF00"></option>',
                                    '<option value="#00FF00" style="background-color:#00FF00"></option>',
                                    '<option value="#00FFFF" style="background-color:#00FFFF"></option>',
                                    '<option value="#FF00FF" style="background-color:#FF00FF"></option>',
                                    '<option value="#FF0000" style="background-color:#FF0000"></option>',
                                    '<option value="#0000FF" style="background-color:#0000FF"></option>',
                                    '<option value="#008080" style="background-color:#008080"></option>',
                                '</select>',
                                '<div class="bold"></div>',
                                '<div class="underline"></div>',
                                '<div class="italic"></div>',
                                '<div class="face"></div>',
                                '<div class="history">��Ϣ��¼</div>',
                            '</td>',
                        '</tr>',
                        '<tr class="send-message">',
                            '<td>',
                                '<iframe name="sendMessage', userJID,'" width="100%" height="80px" frameborder="0"></iframe>',
                            '</td>',
                        '</tr>',
                        '<tr class="bottom-bar">',
                            '<td><input type="text" id="to" name="to" value="hoojo" style="width: 100px; display: none;"/><input type="button" value="�ر�" id="close"/>',
                            '<input type="button" value="����(Enter)" id="send"/> </td>',
                        '</tr>',
                    '</table></div>',
                    '<div id="face"></div>',
                '</div>',
            '</div>'
            ].join("");
        },
        
        initWebIM: function (userJID, receiver) {
            var product = {
                name: "С����",
                pic: "http://avatar.csdn.net/9/7/A/2_ibm_hoojo.jpg",
                price: "198.00",
                marketPrice: "899.90",
                deliverOrgs: "EMS",
                wareHouses: "A��",
                skuAttrs: ""
            };
            var chatEl = $(_opts.chatLayoutTemplate(userJID, _opts.sender, receiver, product));
            $("body").append(chatEl);                        
            
            // ��ק
            $("#" + userJID).easydrag();
            // ��ʼ��sendMessageEditor�����Ϣ
            sendMessageEditor.iframe = this.sendMessageIFrame(userJID);
            sendMessageEditor.init(userJID);    
            
            _opts.setTitle(chatEl);
            _opts.writeReceiveStyle(userJID);
            _opts.writeSendStyle();
            _opts.createFaceElement(chatEl);
            
            // �鿴��������
            chatEl.find(".more").click(function () {
                var $ul = $(this).parents("ul");
                $ul.find(".more").toggle();
                $ul.find(".info").toggle();
                $ul.find(".pic").toggle();
            });
            
            // ��������
            chatEl.find(".split").toggle(function () {
                $(".product-info").hide();
                $(this).parents(".radius").css("border-right-width", "0");
            }, function () {
                $(".product-info").show();
                $(this).parents(".radius").css("border-right-width", "8px");
            });
            
            // ��������¼� settings.toolBarHandler
            chatEl.find(".tool-bar td").children().click(this.toolBarHandler);
             chatEl.find("#send").click(function () {
                 var $chatMain = $(this).parents(".chat-main");
                _opts.sendHandler($chatMain);
             });
             chatEl.find("#close").click(function () {
                 var $chatMain = $(this).parents(".chat-main");
                $chatMain.hide(500);
             });
             
             // ����ȡ���¼��󶨣���һ���Է�������Ϣ������»�ͬʱ�󶨶����ͬ�¼�
            $(".have-msg, .no-msg, .chat-main").unbind("click");
             $(".have-msg").bind("click", function () {
                $(this).hide();
                $(".no-msg").show();
                $(".chat-main:hidden").show(150);
            });
            
            $(".no-msg").click(function () {
                $(".chat-main:hidden").each(function (i, item) {
                    var top = i * 10 + 50;
                    var left = i * 20 + 50;
                    $(this).show(500).css({top: top, left: left});
                });
            });
            
            $(".chat-main").click(function () {
                $(".chat-main").css("z-index", 9999);
                $(this).css({"z-index": 10000});
            });
             
             $(this.sendMessageIFrame(userJID).document).keyup(function (event) {
                 var e = event || window.event;
                 var keyCode = e.which || e.keyCode;
                 if (keyCode == 13) {
                     var $chatMain = $("#" + $(this).find("body").attr("jid"));
                     _opts.sendHandler($chatMain);
                 }
             });
        },
        
        // ���������촰��
        newWebIM: function (settings) {
            var chatUser = remote.userAddress(settings.receiver);
            var userJID = "u" + hex_md5(chatUser);
            _opts.initWebIM(userJID, chatUser);
            
            $("#" + userJID).find(remote.receiver).val(chatUser);
            $("#" + userJID).show(220);
        },
        
        // Զ�̷�����Ϣʱִ�к���
        messageHandler: function (user, content) {
            var userName = user.split("@")[0];
            var tempUser = user;
            if (~tempUser.indexOf("/")) {
                tempUser = tempUser.substr(0, tempUser.indexOf("/"));
            }
            var userJID = "u" + hex_md5(tempUser);
            
            // �״γ�ʼwebIM
            if (!$("#" + userJID).get(0)) {
                // ��ʼIM��壻
                _opts.initWebIM(userJID, user);
            } 
            // ������Ϣ�����ߵ�����
            $("#" + userJID).find(remote.receiver).val(user);
            
            if ($("#" + userJID).get(0)) {
                // ��Ϣ��ʾ
                if ($("div[id='" + userJID + "']:hidden").get(0)) {
                    var haveMessage = $(".have-msg");
                    haveMessage.show();
                    $(".no-msg").hide();
                }
                
                _opts.messageTip("������������Ϣ������գ�");
                // ��chat������Ϣ����д��Ϣ
                remote.jsjac.chat.writeMessage(userJID, userName, content);
            } 
        },
        
        // ��Ϣ��ʾ
        messageTip: function () {
            if (count % 2 == 0) {
                window.focus();
                document.title = "����������Ϣ������գ�";
            } else {
                document.title = "";                
            }
            if (count > 4) {
                document.title = "";    
                count = 0;            
            } else {
                window.setTimeout(_opts.messageTip, 1000);
                count ++;
            }
        }
    };
    
    // ��ʼ��Զ�����������ط���
    var initRemoteIM = function (settings) {
        
        // ��ʼ��Զ����Ϣ
        remote.jsjac.chat.init();
        
        // ���ÿͻ���д����Ϣ����
        remote.jsjac.chat.writeReceiveMessage = settings.writeReceiveMessage;
        
        // ע���¼�
        $(window).bind({
             unload: remote.jsjac.chat.unloadHandler,
             error: remote.jsjac.chat.errorHandler,
             beforeunload: remote.jsjac.chat.logout
        });
    }
    
    $.extend({
        WebIM: function (opts) {
            opts = opts || {};
            // ����Ĭ������
            defaultOptions = $.extend(defaultOptions, defaultOptions, opts);
            var settings = $.extend({}, defaultOptions, opts);    
            initRemoteIM(settings);
            
            settings.newWebIM(settings);
            
            $.WebIM.settings = settings;
        }
    });
    
    $.WebIM.settings = $.WebIM.settings || _opts;
    $.WebIM.initWebIM = _opts.initWebIM;
    $.WebIM.newWebIM = _opts.newWebIM;
    $.WebIM.messageHandler = _opts.messageHandler;
    
})(jQuery);