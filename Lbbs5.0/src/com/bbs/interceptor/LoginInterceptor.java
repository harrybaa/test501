package com.bbs.interceptor;
import java.util.Map;

import com.bbs.model.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		@SuppressWarnings("rawtypes")
		Map session = invocation.getInvocationContext().getSession();
		User user = (User) session.get("user");
		if (user == null) {
			return Action.LOGIN;
		} else {
			return invocation.invoke();
		}

	}

}
