var xmlHttp = null;
function getXMLHttpRequest() {
	if (window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e1) {
				return null;
			}
		}
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		return null;
	}
}

var ajax = {};
ajax.xhr = {};

ajax.xhr.Request = function(url, params, callback, method, factor, fname) {
    this.url = url;
    this.params = params;
    this.callback = callback;
    this.method = method;
    this.factor = factor;
    this.fname = fname;
    this.send();
}

ajax.xhr.Request.prototype = {
    getXMLHttpRequest: function() {
        // IE
        if(window.ActiveXObject) {
            try {
                // 신버전 IE
                return new ActiveXObject("Msxml2.XMLHTTP");
            } catch(e) {
                try {
                    // 구버전 IE
                    return new ActiveXObject("Microsoft.XMLHTTP");
                } catch(e1) { return null; }
            }
        // 비 IE, IE7
        } else if(window.XMLHttpRequest) {
            return new XMLHttpRequest();
        } else {
            return null;
        }
    },

    send: function() {
        this.req = this.getXMLHttpRequest();

        var httpMethod = this.method ? this.method : "GET";
        if(httpMethod != "GET" && httpMethod != "POST") {
            httpMethod = "GET";
        }

        var httpParams = (this.params == null || this.params == "") ? null : this.params;

        var httpUrl = this.url;
        if(httpMethod == "GET" && httpMethod != null) {
            if (httpUrl.indexOf('?') < 0) {
            	httpUrl = httpUrl + "?" + httpParams;
            } else {
            	httpUrl = httpUrl + "&" + httpParams;
            }
        }

        this.req.open(httpMethod, httpUrl, true);
        this.req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        var request = this;
        this.req.onreadystatechange = function() {
            request.onStateChange.call(request);
        }

        // SEND
        this.req.send(httpMethod == "POST" ? httpParams : null);
    },

    onStateChange: function() {
        this.callback(this.req, this.factor, this.fname);
    }
}

//ajax 용 form을 post방식으로 submit할경우 (form의 모든 객체에 대한 param과 value --> querystring으로 전환)
function setQueryString(frmname){
	queryString = "";
	//var frm = document.forms[0];
	var frm = frmname;
	var numberElements = frm.elements.length;
	for ( var i = 0; i < numberElements; i++ ){
		if ( frm.elements[i].type == "checkbox" || frm.elements[i].type == "radio" ) {
			if ( i < numberElements-1 ) {
				if ( frm.elements[i].checked ) queryString += frm.elements[i].name + "=" + escape(frm.elements[i].value) + "&";
			} else {
				if ( frm.elements[i].checked ) queryString += frm.elements[i].name + "=" + escape(frm.elements[i].value);
			}
		} else {
			if ( i < numberElements-1 ) {
				queryString += frm.elements[i].name + "=" + escape(frm.elements[i].value) + "&";
			} else {
				queryString += frm.elements[i].name + "=" + escape(frm.elements[i].value);
			}
		}
	}
	return queryString;
}