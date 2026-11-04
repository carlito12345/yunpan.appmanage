package net.engio.mbassy.bus.error;

/* loaded from: classes.dex */
public interface IPublicationErrorHandler {

    public static final class ConsoleLogger implements IPublicationErrorHandler {
        private final boolean printStackTrace;

        public ConsoleLogger() {
            this(false);
        }

        @Override // net.engio.mbassy.bus.error.IPublicationErrorHandler
        public void handleError(PublicationError publicationError) {
            System.out.getClass();
            if (!this.printStackTrace || publicationError.getCause() == null) {
                return;
            }
            publicationError.getCause().printStackTrace();
        }

        public ConsoleLogger(boolean z) {
            this.printStackTrace = z;
        }
    }

    void handleError(PublicationError publicationError);
}
