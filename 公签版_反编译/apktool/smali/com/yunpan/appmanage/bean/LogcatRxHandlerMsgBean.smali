.class public Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public emitter:Lec/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lec/c;"
        }
    .end annotation
.end field

.field public jsonArray:Lz7/o;


# direct methods
.method public constructor <init>(Lec/c;Lz7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec/c;",
            "Lz7/o;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;->emitter:Lec/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;->jsonArray:Lz7/o;

    .line 7
    .line 8
    return-void
.end method
