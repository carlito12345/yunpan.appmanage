package net.engio.mbassy.dispatch.el;

import javax.el.ExpressionFactory;
import net.engio.mbassy.bus.error.PublicationError;
import net.engio.mbassy.listener.IMessageFilter;
import net.engio.mbassy.subscription.SubscriptionContext;

/* loaded from: classes.dex */
public class ElFilter implements IMessageFilter {

    public static final class ExpressionFactoryHolder {
        public static final ExpressionFactory ELFactory = getELFactory();

        private static final ExpressionFactory getELFactory() {
            try {
                return ExpressionFactory.newInstance();
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    public static final ExpressionFactory ELFactory() {
        return ExpressionFactoryHolder.ELFactory;
    }

    private boolean evalExpression(String str, StandardELResolutionContext standardELResolutionContext, SubscriptionContext subscriptionContext, Object obj) {
        try {
            return ((Boolean) ELFactory().createValueExpression(standardELResolutionContext, str, Boolean.class).getValue(standardELResolutionContext)).booleanValue();
        } catch (Throwable th2) {
            subscriptionContext.handleError(new PublicationError(th2, "Error while evaluating EL expression on message", subscriptionContext).setPublishedMessage(obj));
            return false;
        }
    }

    public static final boolean isELAvailable() {
        return ExpressionFactoryHolder.ELFactory != null;
    }

    @Override // net.engio.mbassy.listener.IMessageFilter
    public boolean accepts(Object obj, SubscriptionContext subscriptionContext) {
        return evalExpression(subscriptionContext.getHandler().getCondition(), new StandardELResolutionContext(obj), subscriptionContext, obj);
    }
}
