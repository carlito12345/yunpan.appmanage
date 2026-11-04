package t9;

import com.bumptech.glide.c;
import com.thegrizzlylabs.sardineandroid.model.EntityWithAnyElement;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.convert.Converter;
import org.simpleframework.xml.core.Persister;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

/* loaded from: classes.dex */
public final class a implements Converter {

    /* renamed from: a, reason: collision with root package name */
    public final Class f14849a;

    /* renamed from: b, reason: collision with root package name */
    public final Persister f14850b;

    public a(Persister persister, Class cls) {
        this.f14850b = persister;
        this.f14849a = cls;
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        for (Field field : this.f14849a.getDeclaredFields()) {
            Element element = (Element) field.getAnnotation(Element.class);
            if (element != null) {
                map.put(element.name().equals("") ? field.getName() : element.name(), field);
            }
        }
        return map;
    }

    @Override // org.simpleframework.xml.convert.Converter
    public final Object read(InputNode inputNode) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        HashMap mapA = a();
        Class cls = this.f14849a;
        EntityWithAnyElement entityWithAnyElement = (EntityWithAnyElement) cls.newInstance();
        List<org.w3c.dom.Element> any = entityWithAnyElement.getAny();
        while (true) {
            InputNode next = inputNode.getNext();
            if (next == null) {
                return entityWithAnyElement;
            }
            if (mapA.containsKey(next.getName())) {
                Field field = (Field) mapA.get(next.getName());
                String name = field.getName();
                cls.getMethod(da.b.c("set", name.substring(0, 1).toUpperCase() + name.substring(1)), field.getType()).invoke(entityWithAnyElement, this.f14850b.read((Class) field.getType(), next));
            } else if (next.getPrefix() == null || next.getPrefix().isEmpty()) {
                while (next.getNext() != null) {
                }
            } else {
                any.add(c.W(next));
            }
        }
    }

    @Override // org.simpleframework.xml.convert.Converter
    public final void write(OutputNode outputNode, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EntityWithAnyElement entityWithAnyElement = (EntityWithAnyElement) obj;
        for (org.w3c.dom.Element element : entityWithAnyElement.getAny()) {
            OutputNode child = outputNode.getChild(element.getNodeName());
            child.getNamespaces().setReference(element.getNamespaceURI(), element.getPrefix());
            child.setValue(element.getTextContent());
            child.commit();
        }
        HashMap mapA = a();
        for (String str : mapA.keySet()) {
            String name = ((Field) mapA.get(str)).getName();
            Object objInvoke = this.f14849a.getMethod(da.b.c("get", name.substring(0, 1).toUpperCase() + name.substring(1)), null).invoke(entityWithAnyElement, null);
            if (objInvoke != null) {
                if (objInvoke instanceof String) {
                    OutputNode child2 = outputNode.getChild(str);
                    child2.setReference("DAV:");
                    child2.setValue((String) objInvoke);
                } else {
                    this.f14850b.write(objInvoke, outputNode);
                }
            }
        }
    }
}
