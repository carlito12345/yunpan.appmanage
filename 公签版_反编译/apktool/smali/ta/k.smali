.class public final synthetic Lta/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/service/AccService;

.field public final synthetic b:Lxa/b;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;Lxa/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta/k;->a:Lcom/yunpan/appmanage/service/AccService;

    iput-object p2, p0, Lta/k;->b:Lxa/b;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lta/k;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    iget-object v2, p0, Lta/k;->b:Lxa/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v3, v1, v2

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-gtz v3, :cond_0

    .line 20
    .line 21
    aget v3, v1, v4

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lwa/s;->c:Lv8/a;

    .line 30
    .line 31
    iget-object v3, v3, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    aget v2, v1, v2

    .line 34
    .line 35
    neg-int v2, v2

    .line 36
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 37
    .line 38
    aget v1, v1, v4

    .line 39
    .line 40
    neg-int v1, v1

    .line 41
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 42
    .line 43
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 44
    .line 45
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    .line 51
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lwa/s;->c:Lv8/a;

    .line 56
    .line 57
    iput-object v3, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    invoke-virtual {v0}, Lv8/a;->e()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
