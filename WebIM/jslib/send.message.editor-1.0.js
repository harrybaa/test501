/**
 * IM chat Send Message iframe editor
 * @author: hoojo
 * @email: hoojo_@126.com
 * @blog: http://blog.csdn.net/IBM_hoojo 
 * @createDate: 2012-5-24
 * @version 1.0
 **/
var agent = window.navigator.userAgent.toLowerCase();
var sendMessageEditor = {
 
     // ��ȡiframe��window����
    getWin: function () {
        return /*!/firefox/.test(agent)*/false ? sendMessageEditor.iframe.contentWindow : window.frames[sendMessageEditor.iframe.name];
    },
 
    //��ȡiframe��document����
    getDoc: function () {
        return !/firefox/.test(agent) ? sendMessageEditor.getWin().document : (sendMessageEditor.iframe.contentDocument || sendMessageEditor.getWin().document);
    },
 
    init: function (userJID) {
        //��document��������д���ʼ�����ݣ��Լ���FireFox
        var doc = sendMessageEditor.getDoc();
        doc.open();
        var html = [
            '<html>', 
            '<head><style type="text/css">body{border:0;margin:0;padding:3px;height:98%;cursor:text;background-color:white;font-size:12px;font-family:Courier,serif,monospace;}</style></head>',
            '<body jid="', userJID, '"></body>', 
            '</html>'].join("");
        doc.write(html);
        //��document����༭ģʽ
        doc.designMode = "on";
        doc.close();
    },
 
     getContent: function () {
         var doc = sendMessageEditor.getDoc();
         //��ȡ�༭����body����
        var body = doc.body || doc.documentElement;
        //��ȡ�༭��������
        var content = body.innerHTML;
        //�����ݽ��д��������滻���е�ĳЩ�����ַ��ȵ�
        //Some code
        
        //��������
        return content;
     },
     
      //ͳһ��ִ�������
    execCmd: function (cmd, value, d){
        var doc = d || sendMessageEditor.getDoc();
        //doc����Ļ�ȡ��������Ĵ���
        //����execCommand����ִ������
        doc.execCommand(cmd, false, value === undefined ? null : value);
    },
    
    getStyleState: function (cmd) {
        var doc = sendMessageEditor.getDoc();
        //doc����Ļ�ȡ�ο�����Ķ���
        //��괦�Ƿ��Ǵ���
        var state = doc.queryCommandState(cmd);
        if(state){
          //�ı䰴ť����ʽ
        }
        return state;
    },
    insertAtCursor: function (text, d, w){
        var doc = d || sendMessageEditor.getDoc();
        var win = w || sendMessageEditor.getWin();
        //win����Ļ�ȡ�ο�����Ĵ���
        if (/msie/.test(agent)) {
            win.focus();
            var r = doc.selection.createRange();
            if (r) {
                r.collapse(true);
                r.pasteHTML(text);      
            }
        } else if (/gecko/.test(agent) || /opera/.test(agent)) {
            win.focus();
            sendMessageEditor.execCmd('InsertHTML', text, doc);
        } else if (/safari/.test(agent)) {
            sendMessageEditor.execCmd('InsertText', text, doc);
        }
    }
};