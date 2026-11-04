.class public final synthetic Lua/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/w;


# instance fields
.field public final synthetic a:Lua/i9;

.field public final synthetic b:Lx9/w3;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lua/i9;ILx9/w3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/u8;->a:Lua/i9;

    iput p2, p0, Lua/u8;->c:I

    iput-object p3, p0, Lua/u8;->b:Lx9/w3;

    return-void
.end method

.method public synthetic constructor <init>(Lua/i9;Lx9/w3;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/u8;->a:Lua/i9;

    iput-object p2, p0, Lua/u8;->b:Lx9/w3;

    iput p3, p0, Lua/u8;->c:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lua/u8;->a:Lua/i9;

    .line 3
    .line 4
    iget-object v2, v1, Lua/i9;->h:Lha/u9;

    .line 5
    .line 6
    invoke-virtual {v2}, Lha/u9;->a()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 10
    .line 11
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 12
    .line 13
    iget-object v3, p0, Lua/u8;->b:Lx9/w3;

    .line 14
    .line 15
    iget-object v4, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    new-instance v4, Ljava/io/File;

    .line 27
    .line 28
    iget-object v5, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-boolean v4, v3, Lx9/w3;->c:Z

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    new-instance v4, Lcom/yunpan/appmanage/util/z;

    .line 44
    .line 45
    new-instance v5, Ljava/io/File;

    .line 46
    .line 47
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Lua/g8;

    .line 62
    .line 63
    invoke-direct {v4, v0, v3}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 72
    .line 73
    iget-object p1, v1, Lua/i9;->z:Lx9/f0;

    .line 74
    .line 75
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v0, :cond_2

    .line 80
    .line 81
    iget-object p1, v1, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 84
    .line 85
    .line 86
    const p1, 0x7f08029f

    .line 87
    .line 88
    .line 89
    const-string p2, "\u6ca1\u6709\u6587\u4ef6"

    .line 90
    .line 91
    invoke-virtual {v1, p2, p1, v0}, Lua/i9;->v(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p1, v1, Lua/i9;->z:Lx9/f0;

    .line 95
    .line 96
    iget p2, p0, Lua/u8;->c:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lc6/g;->C(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, "\u5220\u9664\u5931\u8d25\uff1a"

    .line 105
    .line 106
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const/4 p2, 0x0

    .line 117
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method
