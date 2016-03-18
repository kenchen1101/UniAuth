<jsp:directive.include file="/WEB-INF/view/jsp/dianrong/common/top.jsp" />

<div class="container find-pwd-container">
		<div class="find-pwd-content ng-scope">
			<header class="find-pwd">
				<% 
								Object savedLoginContext = request.getSession().getAttribute("pwdg_savedLoginContext");
								if(savedLoginContext == null) {
									%>
										<a href="<%=path %>/login"><spring:message code="screen.password.reset.step.backtofirstpage"/></a>
									<% 
								} else {
									%>
										<a href="${sessionScope.pwdg_savedLoginContext}"><spring:message code="screen.password.reset.step.backtofirstpage"/></a>
									<% 
								}
						%>
				&gt;<spring:message code="screen.password.reset.step1.title" />
			</header>
			<div class="common-wizard password-reset-wizard ng-isolate-scope">
				<div class="modal-header">
					<ul class="steps-indicator steps-4">
						<li class="ng-scope current">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">1</span>
								<spring:message code="screen.password.reset.step1.notice"/>
							</a>
							</li>
						<li class="ng-scope default">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">2</span>
								<spring:message code="screen.password.reset.step2.notice"/>
							</a>
						</li>
						<li class="ng-scope default">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">3</span>
								<spring:message code="screen.password.reset.step3.notice"/>
							</a>
						</li>
						<li class="ng-scope default">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">4</span>
								<spring:message code="screen.password.reset.step4.notice"/>
							</a>
						</li>
					</ul>
				</div>
				
				<!-- content -->
				<div class="steps">
					<form action="<%=path %>/uniauth/forgetPassword" id="step1Post" class="form-horizontal">
					  <div class="form-group">
					  	<div class="col-md-offset-4 col-md-4">
					    	<input type="email" class="form-control" placeholder="Email" id="temail">
					    </div>
					  </div>
					  <div class="form-group">
					  	<div class="col-md-offset-4 col-md-2">
					    	<input type="text" class="form-control" id="tverfynotice" placeholder="<spring:message code="screen.password.reset.step1.verfy.notice"/>">
					  	</div>
					  	<div class="col-md-2">
					  		<div class="captcha-img">
					    		<img alt="picture" src="<%=path %>/uniauth/captcha" title="picture" id="verfypic" >
					    		<button type="button" class="btn btn-primary glyphicon glyphicon-refresh" id="refreshverfypic"></button>
					    	</div>
					  	</div>
					  </div>
					  <div class="form-group">
					  	<div class="col-md-offset-4 col-md-4">
					  		<button type="button" id="btn_step1" class="btn btn-wide btn-primary btnstep cursordefault" disabled="disabled"><spring:message code="screen.password.reset.nextstep"/></button>
					  	</div>
					  </div>
					  <div class="form-group">
					  	<div class="col-md-offset-4 col-md-8 showwarninfo">
						    <label for="emailinfo" id="temailwarn"></label>
						</div>
					  </div>
					</form>
				</div>
			</div>
		</div>
</div>

<jsp:directive.include file="/WEB-INF/view/jsp/dianrong/common/bottom.jsp" />