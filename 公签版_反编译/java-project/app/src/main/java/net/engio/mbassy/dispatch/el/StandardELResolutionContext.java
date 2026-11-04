package net.engio.mbassy.dispatch.el;

import java.lang.reflect.Method;
import javax.el.BeanELResolver;
import javax.el.ELContext;
import javax.el.ELResolver;
import javax.el.FunctionMapper;
import javax.el.ValueExpression;
import javax.el.VariableMapper;

/* loaded from: classes.dex */
public class StandardELResolutionContext extends ELContext {
    private final FunctionMapper functionMapper;
    private final Object message;
    private final ELResolver resolver = new BeanELResolver(true);
    private final VariableMapper variableMapper;

    public class MsgMapper extends VariableMapper {
        private static final String msg = "msg";
        private final ValueExpression msgExpression;

        private MsgMapper() {
            this.msgExpression = ElFilter.ELFactory().createValueExpression(StandardELResolutionContext.this.message, StandardELResolutionContext.this.message.getClass());
        }

        public ValueExpression resolveVariable(String str) {
            if (str.equals(msg)) {
                return this.msgExpression;
            }
            return null;
        }

        public ValueExpression setVariable(String str, ValueExpression valueExpression) {
            return null;
        }
    }

    public class NoopFunctionMapper extends FunctionMapper {
        private NoopFunctionMapper() {
        }

        public Method resolveFunction(String str, String str2) {
            return null;
        }
    }

    public StandardELResolutionContext(Object obj) {
        this.message = obj;
        this.functionMapper = new NoopFunctionMapper();
        this.variableMapper = new MsgMapper();
    }

    public ELResolver getELResolver() {
        return this.resolver;
    }

    public FunctionMapper getFunctionMapper() {
        return this.functionMapper;
    }

    public VariableMapper getVariableMapper() {
        return this.variableMapper;
    }
}
