.class public final synthetic Ltb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# instance fields
.field public final synthetic a:Ltb/l;

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Ltb/l;FLandroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/i;->a:Ltb/l;

    iput p2, p0, Ltb/i;->b:F

    iput-object p3, p0, Ltb/i;->c:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ltb/i;->a:Ltb/l;

    .line 2
    .line 3
    iget-object v1, v0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v2, p0, Ltb/i;->b:F

    .line 6
    .line 7
    add-float/2addr p1, v2

    .line 8
    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 9
    .line 10
    add-float/2addr v2, p2

    .line 11
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iget-object v3, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 15
    .line 16
    cmpl-float p2, v2, p2

    .line 17
    .line 18
    if-lez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    cmpg-float p1, p1, p2

    .line 26
    .line 27
    if-gez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    const/16 p2, 0xa

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Ltb/i;->c:Landroid/graphics/Canvas;

    .line 42
    .line 43
    invoke-virtual {v0, p2, p1, v1}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    int-to-float p2, p2

    .line 53
    cmpg-float p1, p1, p2

    .line 54
    .line 55
    if-gez p1, :cond_1

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    :goto_0
    return p1
.end method
