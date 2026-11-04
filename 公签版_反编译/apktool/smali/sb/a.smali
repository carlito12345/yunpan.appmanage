.class public final Lsb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:I

.field public c:I

.field public d:Lsb/a;

.field public final synthetic e:Lbd/e;


# direct methods
.method public constructor <init>(Lbd/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsb/a;->e:Lbd/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lbd/e;->b:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x5

    .line 9
    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Lsb/a;->a:[I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lsb/a;->b:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lsb/a;->b:I

    .line 4
    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lsb/a;->a:[I

    .line 8
    .line 9
    aget v2, v2, v0

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput v1, p0, Lsb/a;->c:I

    .line 19
    .line 20
    return-void
.end method
