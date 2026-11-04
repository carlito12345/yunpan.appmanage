package net.engio.mbassy.listener;

import java.io.PrintStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.engio.mbassy.common.IPredicate;
import net.engio.mbassy.common.ReflectionUtils;
import net.engio.mbassy.listener.MessageHandler;
import net.engio.mbassy.subscription.MessageEnvelope;

/* loaded from: classes.dex */
public class MetadataReader {
    private static final IPredicate<Method> AllMessageHandlers = new IPredicate<Method>() { // from class: net.engio.mbassy.listener.MetadataReader.1
        @Override // net.engio.mbassy.common.IPredicate
        public boolean apply(Method method) {
            return ReflectionUtils.getAnnotation(method, Handler.class) != null;
        }
    };
    private final Map<Class<? extends IMessageFilter>, IMessageFilter> filterCache = new HashMap();

    private Filter[] collectFilters(Method method, Handler handler) {
        ArrayList arrayList = new ArrayList(handler.filters().length);
        Collections.addAll(arrayList, handler.filters());
        Annotation[] annotations = method.getAnnotations();
        for (int i10 = 0; i10 < method.getAnnotations().length; i10++) {
            Class<? extends Annotation> clsAnnotationType = annotations[i10].annotationType();
            IncludeFilters includeFilters = (IncludeFilters) clsAnnotationType.getAnnotation(IncludeFilters.class);
            if (includeFilters != null) {
                Collections.addAll(arrayList, includeFilters.value());
            }
            Filter filter = (Filter) clsAnnotationType.getAnnotation(Filter.class);
            if (filter != null) {
                arrayList.add(filter);
            }
        }
        return (Filter[]) arrayList.toArray(new Filter[arrayList.size()]);
    }

    private IMessageFilter[] getFilter(Method method, Handler handler) throws IllegalAccessException, InstantiationException {
        Filter[] filterArrCollectFilters = collectFilters(method, handler);
        if (filterArrCollectFilters.length == 0) {
            return null;
        }
        IMessageFilter[] iMessageFilterArr = new IMessageFilter[filterArrCollectFilters.length];
        int i10 = 0;
        for (Filter filter : filterArrCollectFilters) {
            IMessageFilter iMessageFilterNewInstance = this.filterCache.get(filter.value());
            if (iMessageFilterNewInstance == null) {
                try {
                    iMessageFilterNewInstance = filter.value().newInstance();
                    this.filterCache.put(filter.value(), iMessageFilterNewInstance);
                } catch (Exception e7) {
                    throw new RuntimeException(e7);
                }
            }
            iMessageFilterArr[i10] = iMessageFilterNewInstance;
            i10++;
        }
        return iMessageFilterArr;
    }

    private boolean isValidMessageHandler(Method method) {
        if (method == null || ReflectionUtils.getAnnotation(method, Handler.class) == null) {
            return false;
        }
        if (method.getParameterTypes().length != 1) {
            PrintStream printStream = System.out;
            method.getName();
            printStream.getClass();
            return false;
        }
        Enveloped enveloped = (Enveloped) ReflectionUtils.getAnnotation(method, Enveloped.class);
        if (enveloped != null && !MessageEnvelope.class.isAssignableFrom(method.getParameterTypes()[0])) {
            System.out.getClass();
            return false;
        }
        if (enveloped == null || enveloped.messages().length != 0) {
            return true;
        }
        System.out.getClass();
        return false;
    }

    public MessageListener getMessageListener(Class cls) throws SecurityException {
        MessageListener messageListener = new MessageListener(cls);
        Method[] methods = ReflectionUtils.getMethods(AllMessageHandlers, cls);
        for (Method method : methods) {
            if (!ReflectionUtils.containsOverridingMethod(methods, method)) {
                Handler handler = (Handler) ReflectionUtils.getAnnotation(method, Handler.class);
                Enveloped enveloped = (Enveloped) ReflectionUtils.getAnnotation(method, Enveloped.class);
                if (handler.enabled() && isValidMessageHandler(method)) {
                    Method overridingMethod = ReflectionUtils.getOverridingMethod(method, cls);
                    if (overridingMethod == null) {
                        overridingMethod = method;
                    }
                    messageListener.addHandler(new MessageHandler(MessageHandler.Properties.Create(overridingMethod, handler, enveloped, getFilter(method, handler), messageListener)));
                }
            }
        }
        return messageListener;
    }
}
