.class public final Lx9/z;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lda/g;

.field public i:I


# direct methods
.method public constructor <init>(Lda/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/z;->h:Lda/g;

    .line 5
    .line 6
    iput p2, p0, Lx9/z;->i:I

    .line 7
    .line 8
    return-void
.end method

.method public static F(J)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "0.00"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    long-to-double v1, p0

    .line 9
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 10
    .line 11
    cmpg-double v5, v1, v3

    .line 12
    .line 13
    if-gez v5, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " B"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-wide/high16 p0, 0x4130000000000000L    # 1048576.0

    .line 34
    .line 35
    cmpg-double v5, v1, p0

    .line 36
    .line 37
    if-gez v5, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 45
    .line 46
    .line 47
    div-double/2addr v1, v3

    .line 48
    div-double/2addr v1, v3

    .line 49
    const-string p1, " KB"

    .line 50
    .line 51
    invoke-static {v0, v1, v2, p0, p1}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    const-wide/high16 p0, 0x41d0000000000000L    # 1.073741824E9

    .line 57
    .line 58
    cmpg-double v5, v1, p0

    .line 59
    .line 60
    if-gez v5, :cond_2

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 68
    .line 69
    .line 70
    div-double/2addr v1, v3

    .line 71
    div-double/2addr v1, v3

    .line 72
    const-string p1, " MB"

    .line 73
    .line 74
    invoke-static {v0, v1, v2, p0, p1}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 85
    .line 86
    .line 87
    div-double/2addr v1, v3

    .line 88
    div-double/2addr v1, v3

    .line 89
    div-double/2addr v1, v3

    .line 90
    const-string p1, " GB"

    .line 91
    .line 92
    invoke-static {v0, v1, v2, p0, p1}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e012c

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 4
    .line 5
    const p2, 0x7f0b04b5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v1, p0, Lx9/z;->h:Lda/g;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/bumptech/glide/n;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "\u5df2\u5378\u8f7d"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const v0, 0x7f080308

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const v0, 0x7f080272

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1, p2, v0}, Lh6/a;->b(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance v1, Ljava/io/File;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, ".png"

    .line 81
    .line 82
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 94
    .line 95
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    const p2, 0x7f0b0523

    .line 107
    .line 108
    .line 109
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-wide v0, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 115
    .line 116
    invoke-static {v0, v1}, Lx9/z;->F(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const v0, 0x7f0b040f

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget p2, p0, Lx9/z;->i:I

    .line 127
    .line 128
    const v0, 0x7f0b0611

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0b056b

    .line 132
    .line 133
    .line 134
    if-nez p2, :cond_2

    .line 135
    .line 136
    const-string p2, ""

    .line 137
    .line 138
    invoke-virtual {p1, v1, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    iget-wide v2, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 146
    .line 147
    invoke-static {v2, v3}, Lx9/z;->F(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, v1, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-wide p2, p3, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 155
    .line 156
    invoke-static {p2, p3}, Lx9/z;->F(J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    return-void
.end method
