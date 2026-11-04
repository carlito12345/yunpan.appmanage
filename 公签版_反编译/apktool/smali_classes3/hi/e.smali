.class public final Lhi/e;
.super Ldf/d;
.source "SourceFile"


# static fields
.field public static final h:Landroid/os/Handler;


# instance fields
.field public final e:Ljava/util/HashSet;

.field public final f:Landroid/content/ComponentName;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lhi/e;->h:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldf/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhi/e;->e:Ljava/util/HashSet;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lhi/e;->g:Z

    .line 13
    .line 14
    iget-object p1, p1, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/content/ComponentName;

    .line 17
    .line 18
    iput-object p1, p0, Lhi/e;->f:Landroid/content/ComponentName;

    .line 19
    .line 20
    return-void
.end method
