.class public final synthetic Lvb/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lvb/v;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lvb/v;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/u;->a:Lvb/v;

    iput-object p2, p0, Lvb/u;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lvb/u;->a:Lvb/v;

    .line 2
    .line 3
    iget-object v1, p0, Lvb/u;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v0, Lvb/v;->d:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    int-to-float v7, v5

    .line 61
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float v8, p1

    .line 66
    iget-object p1, v0, Lvb/v;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 67
    .line 68
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/high16 v6, 0x40c00000    # 6.0f

    .line 73
    .line 74
    mul-float v9, v5, v6

    .line 75
    .line 76
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    mul-float v10, p1, v6

    .line 81
    .line 82
    move-object v6, v1

    .line 83
    move-object v11, v4

    .line 84
    invoke-static/range {v6 .. v11}, Lua/t7;->m(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 88
    .line 89
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 90
    .line 91
    invoke-direct {p1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {v1, v3, p1, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    .line 103
    .line 104
    iget-object p1, v0, Lvb/v;->c:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method
