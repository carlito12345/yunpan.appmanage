.class public Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final DEFAULT_INDEX:I = 0x0

.field private static final DEFAULT_SCALE:I = 0x1

.field private static final DEFAULT_SPAN:I = 0x1


# instance fields
.field public colSpan:I

.field public isSectionStart:Z

.field public isSuportIntelligentScrollEnd:Z

.field public isSuportIntelligentScrollStart:Z

.field public rowSpan:I

.field private scale:I

.field public sectionIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object v0, Lw9/a;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x1

    .line 6
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 8
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    return-void
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 8
    .line 9
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 10
    .line 11
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 12
    .line 13
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 14
    .line 15
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollStart:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollStart:Z

    .line 24
    .line 25
    iget-boolean p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollEnd:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollEnd:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 32
    .line 33
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 34
    .line 35
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollStart:Z

    .line 43
    .line 44
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollEnd:Z

    .line 45
    .line 46
    :goto_0
    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 2
    .line 3
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public getRowSpan()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 2
    .line 3
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[rowSpan="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " colSpan="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " sectionIndex="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " scale="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->scale:I

    .line 39
    .line 40
    const-string v2, "]"

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
