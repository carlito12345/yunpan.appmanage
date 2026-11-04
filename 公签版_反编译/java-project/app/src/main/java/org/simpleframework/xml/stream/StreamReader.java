package org.simpleframework.xml.stream;

import java.util.Iterator;
import tc.d;
import uc.a;
import uc.b;
import uc.c;

/* loaded from: classes3.dex */
class StreamReader implements EventReader {
    private EventNode peek;
    private d reader;

    public static class End extends EventToken {
        private End() {
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isEnd() {
            return true;
        }
    }

    public static class Entry extends EventAttribute {
        private final a entry;

        public Entry(a aVar) {
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return null;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            return false;
        }
    }

    public static class Start extends EventElement {
        private final c element;
        private final tc.c location;

        public Start(uc.d dVar) {
            dVar.b();
            dVar.c();
        }

        public Iterator<a> getAttributes() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventElement, org.simpleframework.xml.stream.EventNode
        public int getLine() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return null;
        }
    }

    public static class Text extends EventToken {
        private final b text;

        public Text(uc.d dVar) {
            dVar.a();
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return null;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            throw null;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }
    }

    public StreamReader(d dVar) {
    }

    private Entry attribute(a aVar) {
        return new Entry(aVar);
    }

    private Start build(Start start) {
        Iterator<a> attributes = start.getAttributes();
        while (attributes.hasNext()) {
            g.b.t(attributes.next());
            Entry entryAttribute = attribute(null);
            if (!entryAttribute.isReserved()) {
                start.add(entryAttribute);
            }
        }
        return start;
    }

    private End end() {
        return new End();
    }

    private EventNode read() {
        throw null;
    }

    private Start start(uc.d dVar) {
        Start start = new Start(dVar);
        return start.isEmpty() ? build(start) : start;
    }

    private Text text(uc.d dVar) {
        return new Text(dVar);
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode next() {
        EventNode eventNode = this.peek;
        if (eventNode == null) {
            return read();
        }
        this.peek = null;
        return eventNode;
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode peek() {
        if (this.peek == null) {
            this.peek = next();
        }
        return this.peek;
    }
}
