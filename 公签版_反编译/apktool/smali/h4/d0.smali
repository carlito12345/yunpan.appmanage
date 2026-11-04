.class public abstract Lh4/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgf/g;

.field public static final b:Landroidx/leanback/widget/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lh4/j0;

    .line 8
    .line 9
    invoke-direct {v0}, Lh4/j0;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x17

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lh4/i0;

    .line 20
    .line 21
    invoke-direct {v0}, Lh4/i0;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x16

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Lh4/h0;

    .line 32
    .line 33
    invoke-direct {v0}, Lh4/h0;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x15

    .line 40
    .line 41
    if-lt v0, v1, :cond_3

    .line 42
    .line 43
    new-instance v0, Lh4/g0;

    .line 44
    .line 45
    invoke-direct {v0}, Lh4/g0;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/16 v1, 0x13

    .line 52
    .line 53
    if-lt v0, v1, :cond_4

    .line 54
    .line 55
    new-instance v0, Lh4/f0;

    .line 56
    .line 57
    invoke-direct {v0}, Lh4/f0;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    new-instance v0, Lgf/g;

    .line 64
    .line 65
    const/16 v1, 0x1b

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lh4/d0;->a:Lgf/g;

    .line 71
    .line 72
    :goto_0
    new-instance v0, Landroidx/leanback/widget/a0;

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    invoke-direct {v0, v1}, Landroidx/leanback/widget/a0;-><init>(I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lh4/d0;->b:Landroidx/leanback/widget/a0;

    .line 80
    .line 81
    new-instance v0, Landroidx/leanback/widget/a0;

    .line 82
    .line 83
    const/16 v1, 0xa

    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroidx/leanback/widget/a0;-><init>(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    sget-object v0, Lh4/d0;->a:Lgf/g;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lgf/g;->G(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
