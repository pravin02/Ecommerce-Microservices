package org.pk.ecommerce.filters;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.pk.ecommerce.model.Log;
import org.pk.ecommerce.services.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
public class ZuulPreFilter extends ZuulFilter {

    @Autowired
    private LogService logService;

    @Override
    public String filterType() {
        return "pre";
    }

    @Override
    public int filterOrder() {
        return 1;
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() throws ZuulException {
        RequestContext ctx = RequestContext.getCurrentContext();
        HttpServletRequest request = ctx.getRequest();

        Log log = new Log();
        log.setDescription(request.getMethod() + " request sent to " + request.getRequestURL().toString());
        log.setMethod(request.getMethod());
        log.setType("Pre");
        //logService.saveLog(log);

        return null;
    }
}
