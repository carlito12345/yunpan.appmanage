.class public final Landroidx/recyclerview/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/w;->a:I

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/w;->b:I

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/w;->c:I

    .line 6
    iput p2, p0, Landroidx/recyclerview/widget/w;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/w;->d:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/w;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/w;->b:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/w;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method
