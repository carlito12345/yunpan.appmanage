.class public final Lc0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lc0/f;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lc0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc0/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lc0/f;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc0/f;->c:Lc0/f;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lc0/g;->f:Lcom/bumptech/glide/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/bumptech/glide/c;->V(Lc0/f;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
