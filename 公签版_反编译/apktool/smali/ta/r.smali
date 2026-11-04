.class public final synthetic Lta/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    .line 1
    sget v0, Lcom/yunpan/appmanage/service/StartService;->i:I

    .line 2
    .line 3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object p1, v0, Lwa/s;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lwa/s;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    return-void
.end method
