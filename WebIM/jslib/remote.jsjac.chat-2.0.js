/**
 * IM chat jsjac remote message
 * @author: hoojo
 * @email: hoojo_@126.com
 * @blog http://hoojo.cnblogs.com & http://blog.csdn.net/IBM_hoojo
 * @createDate: 2012-5-24
 * @version 2.0
 * @requires jQuery v1.2.3 or later
 * Copyright (c) 2012 M. hoo
 **/
 
var remote = {
    debug: "info, error",
    chat: "body",
    receiver: "#to", // ������jquery expression
    console: {
        errorEL: function () {
            if ($(remote.chat).get(0)) {
                return $(remote.chat).find("#error");
            } else {
                return $("body").find("#error");
            }
        },
        infoEL: function () {
            if ($(remote.chat).get(0)) {
                return $(remote.chat).find("#info");
            } else {
                return $("body").find("#info");
            }
        },
        // debug info
        info: function (html) {
            if (~remote.debug.indexOf("info")) {
                remote.console.infoEL().append(html);
                remote.console.infoEL().get(0).lastChild.scrollIntoView();
            }
        },
        // debug error
        error: function (html) {
            if (~remote.debug.indexOf("error")) {
                remote.console.errorEL().append(html); 
            }
        },
        // clear info/debug console
        clear: function (s) {
            if ("debug" == s) {
                remote.console.errorEL().html("");
            } else {
                remote.console.infoEL().html("");
            }
        }
    },
    
    userAddress: function (user) {
        if (user) {
            if (!~user.indexOf("@")) {
                user += "@" + remote.jsjac.domain;// + "/" + remote.jsjac.resource;
            } else if (~user.indexOf("/")) {
                user = user.substr(0, user.indexOf("/"));
            }
        }
        return user;
    },
    jsjac: {
        httpbase: window.contextPath + "/JHB/", //�����̨http-bind������url
        domain: window["serverDomin"], //"192.168.5.231", // 192.168.5.231 ��ǰ��Ч����
        username: "",
        pass: "",
        timerval: 2000, // ��������ʱ
        resource: "WebIM", // ������Դ��ʶ
        register: true // �Ƿ�ע��
    }
};
remote.jsjac.chat = {
    writeReceiveMessage: function () {
    },
    setState: function () {
        var onlineStatus = new Object();
        onlineStatus["available"] = "����";
        onlineStatus["chat"] = "��ӭ����";
        onlineStatus["away"] = "�뿪";
        onlineStatus["xa"] = "������";
        onlineStatus["dnd"] = "�������";
        onlineStatus["invisible"] = "����";
        onlineStatus["unavailable"] = "����";
        remote.jsjac.chat.state = onlineStatus;
        return onlineStatus;
    },
    state: null,
    init: function () {
        // Debugger plugin
        if (typeof (Debugger) == "function") {
            remote.dbger = new Debugger(2, remote.jsjac.resource);
            remote.dbger.start();
        } else {
            // if you're using firebug or safari, use this for debugging
            // oDbg = new JSJaCConsoleLogger(2);
            // comment in above and remove comments below if you don't need debugging
            remote.dbger = function () {
            };
            remote.dbger.log = function () {
            };
        }
        
        try { 
            // try to resume a session
            if (JSJaCCookie.read("btype").getValue() == "binding") {
                remote.connection = new JSJaCHttpBindingConnection({ "oDbg": remote.dbger});
                rdbgerjac.chat.setupEvent(remote.connection);
                if (remote.connection.resume()) {
                    remote.console.clear("debug");
                }
            } 
        } catch (e) {
            remote.console.errorEL().html(e.name + ":" + e.message);
        } // reading cookie failed - never mind
        
        remote.jsjac.chat.setState();
    },
    login: function (loginForm) {
        remote.console.clear("debug"); // reset
        try {
            // ���Ӳ���
            var connectionConfig = remote.jsjac;
            
            // Debugger console
            if (typeof (oDbg) != "undefined") {
                connectionConfig.oDbg = oDbg;
            }
            var connection = new JSJaCHttpBindingConnection(connectionConfig);
            remote.connection = connection;
            // ��װ��ע�ᣩConnection�¼�ģ��
            remote.jsjac.chat.setupEvent(connection);
    
            // setup args for connect method
            if (loginForm) {
                //connectionConfig = new Object();
                //connectionConfig.domain = loginForm.domain.value;
                connectionConfig.username = loginForm.userName.value;
                connectionConfig.pass = loginForm.password.value;
                connectionConfig.register = loginForm.register.checked;
            }
            // ���ӷ�����
            connection.connect(connectionConfig);
            
            //remote.jsjac.chat.changeStatus("available", "online", 1, "chat");
        } catch (e) {
            remote.console.errorEL().html(e.toString());
        } finally {
            return false;
        }
    },
    // �ı��û�״̬
    changeStatus: function (type, status, priority, show) {
        type = type || "unavailable";
        status = status || "online";
        priority = priority || "1";
        show = show || "chat";
        var presence = new JSJaCPresence();
        presence.setType(type); // unavailable invisible
        if (remote.connection) {
            //remote.connection.send(presence);
        }
        
        //presence = new JSJaCPresence();
        presence.setStatus(status); // online
        presence.setPriority(priority); // 1
        presence.setShow(show); // chat
        if (remote.connection) {
            remote.connection.send(presence);
        }
    },
    
    // ΪConnectionע���¼�
    setupEvent: function (con) {
        var remoteChat = remote.jsjac.chat;
        con.registerHandler('message', remoteChat.handleMessage);
        con.registerHandler('presence', remoteChat.handlePresence);
        con.registerHandler('iq', remoteChat.handleIQ);
        con.registerHandler('onconnect', remoteChat.handleConnected);
        con.registerHandler('onerror', remoteChat.handleError);
        con.registerHandler('status_changed', remoteChat.handleStatusChanged);
        con.registerHandler('ondisconnect', remoteChat.handleDisconnected);
    
        con.registerIQGet('query', NS_VERSION, remoteChat.handleIqVersion);
        con.registerIQGet('query', NS_TIME, remoteChat.handleIqTime);
    },
    // ����Զ����Ϣ
    sendMessage: function (msg, to) {
        try {
            if (msg == "") {
                return false;
            }
            var user = "";
            if (to) {
                if (!~to.indexOf("@")) {
                    user += "@" + remote.jsjac.domain;
                    to += "/" + remote.jsjac.resource;
                } else if (~to.indexOf("/")) {
                    user = to.substr(0, to.indexOf("/"));
                }
            } else {
                // ��chat������Ϣ����д��Ϣ
                if (remote.jsjac.chat.writeReceiveMessage) {
                    var html = "��û��ָ�������ߵ�����";
                    alert(html);
                    //remote.jsjac.chat.writeReceiveMessage(receiverId, "server", html, false);
                }
                return false;
            }
            var userJID = "u" + hex_md5(user);
            $("#" + userJID).find(remote.receiver).val(to);
            // ����jsjac��message����
            var message = new JSJaCMessage();
            message.setTo(new JSJaCJID(to));
            message.setType("chat"); // �������죬Ĭ��Ϊ�㲥ģʽ
            message.setBody(msg);
            // ������Ϣ
            remote.connection.send(message);
            return false;
        } catch (e) {
            var html = "<div class='msg error''>Error: " + e.message + "</div>";
            remote.console.info(html);
            return false;
        }
    },
    // �˳����Ͽ�����
    logout: function () {
        var presence = new JSJaCPresence();
        presence.setType("unavailable");
        if (remote.connection) {
            remote.connection.send(presence);
            remote.connection.disconnect();
        }
    },
    errorHandler: function (event) {
        var e = event || window.event;
        remote.console.errorEL().html(e);
        if (remote.connection && remote.connection.connected()) {
            remote.connection.disconnect();
        }
        return false;
    },
    unloadHandler: function () {
        var con = remote.connection;
        if (typeof con != "undefined" && con && con.connected()) {
              // save backend type
            if (con._hold) { // must be binding
                (new JSJaCCookie("btype", "binding")).write();
            } 
            if (con.suspend) {
                con.suspend();
            }
        }
    },
    writeMessage: function (userJID, userName, content) {
        // ��chat������Ϣ����д��Ϣ
        if (remote.jsjac.chat.writeReceiveMessage && !!content) {
            remote.jsjac.chat.writeReceiveMessage(userJID, userName, content, false);
        }
    },
    // �������ӷ�����
    reconnection: function () {
        remote.jsjac.register = false;
        if (remote.connection.connected()) {
            remote.connection.disconnect();
        }
        remote.jsjac.chat.login();
    },
    /* ########################### Handler Event ############################# */
    
    handleIQ: function (aIQ) {
        var html = "<div class='msg'>IN (raw): " + aIQ.xml().htmlEnc() + "</div>";
        remote.console.info(html);
        remote.connection.send(aIQ.errorReply(ERR_FEATURE_NOT_IMPLEMENTED));
    },
    handleMessage: function (aJSJaCPacket) {
        var user = aJSJaCPacket.getFromJID().toString();
        //var userName = user.split("@")[0];
        //var userJID = "u" + hex_md5(user);
        var content = aJSJaCPacket.getBody();
        var html = "";
        html += "<div class=\"msg\"><b>��Ϣ���� " + user + ":</b><br/>";
        html += content.htmlEnc() + "</div>";
        remote.console.info(html);
        
        $.WebIM.messageHandler(user, content);
    },
    handlePresence: function (aJSJaCPacket) {
        var user = aJSJaCPacket.getFromJID();
        var userName = user.toString().split("@")[0];
        var html = "<div class=\"msg\">";
        if (!aJSJaCPacket.getType() && !aJSJaCPacket.getShow()) {
            html += "<b>" + userName + " ������.</b>";
        } else {
            html += "<b>" + userName + " ���� presence Ϊ�� ";
            if (aJSJaCPacket.getType()) {
                html += aJSJaCPacket.getType() + ".</b>";
            } else {
                html += aJSJaCPacket.getShow() + ".</b>";
            }
            if (aJSJaCPacket.getStatus()) {
                html += " (" + aJSJaCPacket.getStatus().htmlEnc() + ")";
            }
        }
        html += "</div>";
        remote.console.info(html);
        
        // ��chat������Ϣ����д��Ϣ
        remote.jsjac.chat.writeMessage("", userName, html);
    },
    handleError: function (event) {
        var e = event || window.event;
        var html = "An error occured:<br />" 
            + ("Code: " + e.getAttribute("code") 
            + "\nType: " + e.getAttribute("type") 
            + "\nCondition: " + e.firstChild.nodeName).htmlEnc();
        remote.error(html);
        
        var content = "";
        switch (e.getAttribute("code")) {
            case "401":
                content = "��½��֤ʧ�ܣ�";
                break;
            // ��ע�ᷢ���ظ����������û��Ѿ�ע�ᣬ��ôֱ�ӽ��е�½����            
            case "409":
                //content = "ע��ʧ�ܣ�\n\n�뻻һ���û�����";
                remote.jsjac.chat.reconnection();
                break;
            case "503":
                content = "�޷����ӵ�IM������������������ã�";
                break;
            case "500":
                var contents = "�������ڲ�����\n\n���ӶϿ���<br/><a href='javascript: self.parent.remote.jsjac.chat.reconnection();'>��������</a>";
                remote.jsjac.chat.writeMessage("", "ϵͳ", contents);
                break;
            default:
                break;
        }
        if (content) {
            alert("WeIM: " + content);
        }
        if (remote.connection.connected()) {
            remote.connection.disconnect();
        }
    },
    // ״̬�仯�����¼�
    handleStatusChanged: function (status) {
        remote.console.info("<div>��ǰ�û�״̬: " + status + "</div>");
        remote.dbger.log("��ǰ�û�״̬: " + status);
        if (status == "disconnecting") {
            var html = "<b style='color:red;'>�������ˣ�</b>";
            // ��chat������Ϣ����д��Ϣ
            remote.jsjac.chat.writeMessage("", "ϵͳ", html);
        }
    },
    // �������Ӵ����¼�����
    handleConnected: function () {
        remote.console.clear("debug"); // reset
        remote.connection.send(new JSJaCPresence());
    },
    // �Ͽ����Ӵ����¼�����
    handleDisconnected: function () {
        
    },
    handleIqVersion: function (iq) {
        remote.connection.send(iq.reply([
            iq.buildNode("name", remote.jsjac.resource), 
            iq.buildNode("version", JSJaC.Version), 
            iq.buildNode("os", navigator.userAgent)
        ]));
        return true;
    },
    handleIqTime: function (iq) {
        var now = new Date();
        remote.connection.send(iq.reply([
            iq.buildNode("display", now.toLocaleString()), 
            iq.buildNode("utc", now.jabberDate()), 
            iq.buildNode("tz", now.toLocaleString().substring(now.toLocaleString().lastIndexOf(" ") + 1))
        ]));
        return true;
    }
};