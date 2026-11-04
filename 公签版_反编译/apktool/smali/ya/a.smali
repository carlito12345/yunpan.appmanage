.class public final synthetic Lya/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly3/a;


# direct methods
.method public synthetic constructor <init>(Ly3/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya/a;->a:I

    iput-object p1, p0, Lya/a;->b:Ly3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget v0, p0, Lya/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lya/a;->b:Ly3/a;

    .line 7
    .line 8
    iget-object v1, v0, Ly3/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/yunpan/appmanage/service/AccService;

    .line 11
    .line 12
    invoke-static {v1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Ly3/a;->e:Ljava/lang/Object;

    .line 17
    .line 18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    iget-object v2, v0, Ly3/a;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Ly3/a;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Landroid/graphics/Point;

    .line 36
    .line 37
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aget v3, v1, v3

    .line 41
    .line 42
    sub-int/2addr v2, v3

    .line 43
    iget-object v3, v0, Ly3/a;->g:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    iget-object v3, v0, Ly3/a;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Landroid/graphics/Point;

    .line 55
    .line 56
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    aget v1, v1, v4

    .line 60
    .line 61
    sub-int/2addr v3, v1

    .line 62
    iget-object v1, v0, Ly3/a;->g:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v3, v1

    .line 71
    iget-object v1, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 74
    .line 75
    iput v2, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 76
    .line 77
    iput v3, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 78
    .line 79
    invoke-virtual {v0}, Ly3/a;->a()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lya/a;->b:Ly3/a;

    .line 84
    .line 85
    iget-object v1, v0, Ly3/a;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lcom/yunpan/appmanage/service/AccService;

    .line 88
    .line 89
    invoke-static {v1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Ly3/a;->e:Ljava/lang/Object;

    .line 94
    .line 95
    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [I

    .line 97
    .line 98
    iget-object v2, v0, Ly3/a;->f:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    aget v2, v1, v2

    .line 107
    .line 108
    iget-object v3, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 111
    .line 112
    iput v2, v3, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    aget v1, v1, v2

    .line 116
    .line 117
    iput v1, v3, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 118
    .line 119
    invoke-virtual {v0}, Ly3/a;->a()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
