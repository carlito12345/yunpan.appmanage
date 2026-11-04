.class public final Lha/i9;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final A:Lz7/s;

.field public final B:Ld3/g;

.field public g:Landroid/widget/EditText;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public w:Lx9/t2;

.field public x:Lha/p6;

.field public final y:Lz7/s;

.field public final z:I


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;Lda/g;Lz7/s;ILd3/g;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ca

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/i9;->y:Lz7/s;

    .line 8
    .line 9
    iput p4, p0, Lha/i9;->z:I

    .line 10
    .line 11
    iput-object p5, p0, Lha/i9;->B:Ld3/g;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-ne p4, p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lz7/s;

    .line 21
    .line 22
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lha/i9;->A:Lz7/s;

    .line 26
    .line 27
    :try_start_0
    const-string p3, "name"

    .line 28
    .line 29
    const-string p4, ""

    .line 30
    .line 31
    invoke-virtual {p1, p3, p4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "isOpen"

    .line 35
    .line 36
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "keyCode"

    .line 42
    .line 43
    invoke-virtual {p1, p3, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    const-string p3, "zhKeyCode"

    .line 47
    .line 48
    invoke-virtual {p1, p3, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 49
    .line 50
    .line 51
    const-string p2, "click"

    .line 52
    .line 53
    new-instance p3, Lz7/o;

    .line 54
    .line 55
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 59
    .line 60
    .line 61
    const-string p2, "doubleClick"

    .line 62
    .line 63
    new-instance p3, Lz7/o;

    .line 64
    .line 65
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 69
    .line 70
    .line 71
    const-string p2, "longClick"

    .line 72
    .line 73
    new-instance p3, Lz7/o;

    .line 74
    .line 75
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "zhClick"

    .line 82
    .line 83
    new-instance p3, Lz7/o;

    .line 84
    .line 85
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string p1, "keys"

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, p4}, Lz7/o;->l(I)Lz7/p;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lha/i9;->A:Lz7/s;

    .line 107
    .line 108
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    new-instance v0, Lha/f9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lha/f9;-><init>(Lha/i9;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, p1, v3, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/i9;->x:Lha/p6;

    .line 2
    .line 3
    new-instance v1, Lha/d7;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, v2, p1}, Lha/d7;-><init>(ILandroid/widget/EditText;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, v0, Lha/p6;->g:Lha/d7;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lha/p6;->k:Lcom/hsae/autosdk/hmi/IHmi;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :try_start_0
    const-string p1, "com.hsae.auto.IBINDER_HMI"

    .line 20
    .line 21
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const-string v1, "\u83b7\u53d6\u7cfb\u7edf\u670d\u52a1\u5931\u8d25"

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :try_start_1
    invoke-static {p1}, Lcom/hsae/autosdk/hmi/IHmi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/hmi/IHmi;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, v0, Lha/p6;->k:Lcom/hsae/autosdk/hmi/IHmi;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    const-string p1, "\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lha/p6;->dismiss()V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/i9;->A:Lz7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lha/i9;->w:Lx9/t2;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lha/i9;->w:Lx9/t2;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "doubleClick"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_1
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v2, v4, :cond_1

    .line 75
    .line 76
    iget-object v4, p0, Lha/i9;->w:Lx9/t2;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "longClick"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    :goto_2
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-ge v2, v4, :cond_2

    .line 114
    .line 115
    iget-object v4, p0, Lha/i9;->w:Lx9/t2;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    const-string v1, "zhClick"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_3

    .line 144
    .line 145
    :goto_3
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ge v3, v1, :cond_3

    .line 152
    .line 153
    iget-object v1, p0, Lha/i9;->w:Lx9/t2;

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_0
    :cond_3
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const v3, 0x7f0b03c2

    .line 12
    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lha/i9;->j:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lha/i9;->b(Landroid/widget/EditText;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x7f0b03c1

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lha/i9;->k:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lha/i9;->b(Landroid/widget/EditText;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const v3, 0x7f0b0365

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lha/i9;->a(I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const v3, 0x7f0b0367

    .line 59
    .line 60
    .line 61
    if-ne v2, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lha/i9;->a(I)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const v3, 0x7f0b0368

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    if-ne v2, v3, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Lha/i9;->a(I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const v3, 0x7f0b036a

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    if-ne v2, v3, :cond_7

    .line 92
    .line 93
    iget-object v1, v0, Lha/i9;->k:Landroid/widget/EditText;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 114
    .line 115
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    invoke-virtual {v0, v6}, Lha/i9;->a(I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iget-object v3, v0, Lha/i9;->B:Ld3/g;

    .line 129
    .line 130
    iget-object v7, v0, Lha/a4;->b:Landroid/content/Context;

    .line 131
    .line 132
    iget v8, v0, Lha/i9;->z:I

    .line 133
    .line 134
    iget-object v9, v0, Lha/i9;->y:Lz7/s;

    .line 135
    .line 136
    const-string v10, "UP_KEYMAP_NISSAN"

    .line 137
    .line 138
    const v11, 0x7f0b0369

    .line 139
    .line 140
    .line 141
    const-string v12, "keys"

    .line 142
    .line 143
    const/4 v13, -0x1

    .line 144
    if-ne v2, v11, :cond_18

    .line 145
    .line 146
    iget-object v2, v0, Lha/i9;->j:Landroid/widget/EditText;

    .line 147
    .line 148
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_8

    .line 157
    .line 158
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6e\u4e3b\u952e"

    .line 159
    .line 160
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_8

    .line 164
    .line 165
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iget-object v11, v0, Lha/i9;->g:Landroid/widget/EditText;

    .line 170
    .line 171
    invoke-static {v11}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    if-eqz v14, :cond_9

    .line 180
    .line 181
    const-string v1, "\u8bf7\u8f93\u5165\u6309\u952e\u5907\u6ce8\u540d"

    .line 182
    .line 183
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :cond_9
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    const-string v15, "keyCode"

    .line 193
    .line 194
    const-string v4, "name"

    .line 195
    .line 196
    if-ne v8, v13, :cond_c

    .line 197
    .line 198
    const/4 v13, 0x0

    .line 199
    :goto_0
    iget-object v5, v14, Lz7/o;->a:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-ge v13, v5, :cond_c

    .line 206
    .line 207
    invoke-virtual {v14, v13}, Lz7/o;->l(I)Lz7/p;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    const-string v1, "\u5b58\u5728\u76f8\u540c\u7684\u6309\u952e\u5907\u6ce8\uff0c\u8bf7\u66f4\u6539"

    .line 230
    .line 231
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_8

    .line 235
    .line 236
    :cond_a
    invoke-static {v14, v13, v15}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-ne v5, v2, :cond_b

    .line 241
    .line 242
    const-string v1, "\u5df2\u5b58\u5728\u76f8\u540c\u7684\u4e3b\u952e\u7801\uff0c\u8bf7\u52ff\u91cd\u590d\u6dfb\u52a0"

    .line 243
    .line 244
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_8

    .line 248
    .line 249
    :cond_b
    add-int/2addr v13, v1

    .line 250
    goto :goto_0

    .line 251
    :cond_c
    iget-object v2, v0, Lha/i9;->w:Lx9/t2;

    .line 252
    .line 253
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_d

    .line 258
    .line 259
    const-string v1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 260
    .line 261
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_8

    .line 265
    .line 266
    :cond_d
    iget-object v2, v0, Lha/i9;->k:Landroid/widget/EditText;

    .line 267
    .line 268
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    const-string v5, "keyType"

    .line 285
    .line 286
    if-eqz v2, :cond_f

    .line 287
    .line 288
    iget-object v2, v0, Lha/i9;->w:Lx9/t2;

    .line 289
    .line 290
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    if-eqz v11, :cond_f

    .line 303
    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    check-cast v11, Lz7/s;

    .line 309
    .line 310
    invoke-virtual {v11, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-ne v11, v6, :cond_e

    .line 319
    .line 320
    new-instance v1, Lha/z6;

    .line 321
    .line 322
    new-instance v2, Lha/j2;

    .line 323
    .line 324
    const/4 v3, 0x5

    .line 325
    invoke-direct {v2, v3}, Lha/j2;-><init>(I)V

    .line 326
    .line 327
    .line 328
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 329
    .line 330
    iget-object v4, v0, Lha/a4;->b:Landroid/content/Context;

    .line 331
    .line 332
    const-string v19, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u8bbe\u7f6e\u7ec4\u5408\u952e\uff0c\u4f46\u4f60\u5374\u8bbe\u7f6e\u4e86\u7ec4\u5408\u64cd\u4f5c\n\u8bf7\u5220\u9664\u7ec4\u5408\u64cd\u4f5c\uff0c\u6216\u8005\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 333
    .line 334
    const-string v20, ""

    .line 335
    .line 336
    const-string v21, "\u597d\u7684"

    .line 337
    .line 338
    const-string v22, ""

    .line 339
    .line 340
    move-object/from16 v16, v1

    .line 341
    .line 342
    move-object/from16 v17, v3

    .line 343
    .line 344
    move-object/from16 v18, v4

    .line 345
    .line 346
    move-object/from16 v23, v2

    .line 347
    .line 348
    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :cond_f
    iget-object v2, v0, Lha/i9;->g:Landroid/widget/EditText;

    .line 357
    .line 358
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iget-object v11, v0, Lha/i9;->A:Lz7/s;

    .line 363
    .line 364
    invoke-virtual {v11, v4, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v2, v0, Lha/i9;->j:Landroid/widget/EditText;

    .line 368
    .line 369
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_10

    .line 378
    .line 379
    const/4 v2, -0x1

    .line 380
    goto :goto_1

    .line 381
    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v11, v15, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v0, Lha/i9;->k:Landroid/widget/EditText;

    .line 393
    .line 394
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_11

    .line 403
    .line 404
    const/4 v2, -0x1

    .line 405
    goto :goto_2

    .line 406
    :cond_11
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    const-string v4, "zhKeyCode"

    .line 415
    .line 416
    invoke-virtual {v11, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 417
    .line 418
    .line 419
    new-instance v2, Lz7/o;

    .line 420
    .line 421
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v4, "click"

    .line 425
    .line 426
    invoke-virtual {v11, v4, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 427
    .line 428
    .line 429
    new-instance v2, Lz7/o;

    .line 430
    .line 431
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string v13, "doubleClick"

    .line 435
    .line 436
    invoke-virtual {v11, v13, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 437
    .line 438
    .line 439
    new-instance v2, Lz7/o;

    .line 440
    .line 441
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string v14, "longClick"

    .line 445
    .line 446
    invoke-virtual {v11, v14, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Lz7/o;

    .line 450
    .line 451
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v15, "zhClick"

    .line 455
    .line 456
    invoke-virtual {v11, v15, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v0, Lha/i9;->w:Lx9/t2;

    .line 460
    .line 461
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v16

    .line 473
    if-eqz v16, :cond_16

    .line 474
    .line 475
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v16

    .line 479
    move-object/from16 v6, v16

    .line 480
    .line 481
    check-cast v6, Lz7/s;

    .line 482
    .line 483
    invoke-virtual {v6, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 484
    .line 485
    .line 486
    move-result-object v16

    .line 487
    invoke-virtual/range {v16 .. v16}, Lz7/p;->e()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_12

    .line 492
    .line 493
    invoke-virtual {v11, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v1, v6}, Lz7/o;->k(Lz7/p;)V

    .line 498
    .line 499
    .line 500
    :goto_4
    const/4 v0, 0x3

    .line 501
    goto :goto_5

    .line 502
    :cond_12
    const/4 v0, 0x1

    .line 503
    if-ne v1, v0, :cond_13

    .line 504
    .line 505
    invoke-virtual {v11, v13}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v0, v6}, Lz7/o;->k(Lz7/p;)V

    .line 510
    .line 511
    .line 512
    goto :goto_4

    .line 513
    :cond_13
    const/4 v0, 0x2

    .line 514
    if-ne v1, v0, :cond_14

    .line 515
    .line 516
    invoke-virtual {v11, v14}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v1, v6}, Lz7/o;->k(Lz7/p;)V

    .line 521
    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_14
    const/4 v0, 0x3

    .line 525
    if-ne v1, v0, :cond_15

    .line 526
    .line 527
    invoke-virtual {v11, v15}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v1, v6}, Lz7/o;->k(Lz7/p;)V

    .line 532
    .line 533
    .line 534
    :cond_15
    :goto_5
    const/4 v1, 0x1

    .line 535
    const/4 v6, 0x3

    .line 536
    move-object/from16 v0, p0

    .line 537
    .line 538
    goto :goto_3

    .line 539
    :cond_16
    const/4 v1, -0x1

    .line 540
    if-ne v8, v1, :cond_17

    .line 541
    .line 542
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v0, v11}, Lz7/o;->k(Lz7/p;)V

    .line 547
    .line 548
    .line 549
    goto :goto_6

    .line 550
    :cond_17
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0, v8, v11}, Lz7/o;->o(ILz7/p;)V

    .line 555
    .line 556
    .line 557
    :goto_6
    invoke-static {v7, v9}, Lq4/a;->W(Landroid/content/Context;Lz7/s;)V

    .line 558
    .line 559
    .line 560
    invoke-static {v7, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->F:I

    .line 567
    .line 568
    iget-object v0, v3, Ld3/g;->c:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->y()V

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 576
    .line 577
    .line 578
    goto :goto_8

    .line 579
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    const v1, 0x7f0b0366

    .line 584
    .line 585
    .line 586
    if-ne v0, v1, :cond_1c

    .line 587
    .line 588
    const/4 v0, -0x1

    .line 589
    if-eq v8, v0, :cond_19

    .line 590
    .line 591
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v1, v8}, Lz7/o;->n(I)V

    .line 596
    .line 597
    .line 598
    invoke-static {v7, v9}, Lq4/a;->W(Landroid/content/Context;Lz7/s;)V

    .line 599
    .line 600
    .line 601
    :cond_19
    invoke-static {v7, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget v1, v3, Ld3/g;->b:I

    .line 605
    .line 606
    if-ne v1, v0, :cond_1a

    .line 607
    .line 608
    goto :goto_7

    .line 609
    :cond_1a
    iget-object v0, v3, Ld3/g;->c:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 612
    .line 613
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 614
    .line 615
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    const/4 v3, 0x1

    .line 620
    if-ne v2, v3, :cond_1b

    .line 621
    .line 622
    const v2, 0x7f0b03ad

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 630
    .line 631
    .line 632
    :cond_1b
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 633
    .line 634
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 635
    .line 636
    .line 637
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 638
    .line 639
    .line 640
    :cond_1c
    :goto_8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "isOpen"

    .line 5
    .line 6
    iget-object v0, p0, Lha/i9;->A:Lz7/s;

    .line 7
    .line 8
    const v1, 0x7f0b0568

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iput-object v1, p0, Lha/i9;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    const v1, 0x7f0b0569

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .line 28
    iput-object v1, p0, Lha/i9;->i:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v1, p0, Lha/i9;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    new-instance v2, Lha/g9;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v3, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0b0443

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/EditText;

    .line 49
    .line 50
    iput-object v1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 51
    .line 52
    const v1, 0x7f0b0466

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/EditText;

    .line 60
    .line 61
    iput-object v1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 62
    .line 63
    const v1, 0x7f0b0464

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/EditText;

    .line 71
    .line 72
    iput-object v1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 73
    .line 74
    const v1, 0x7f0b03c2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v1, p0, Lha/i9;->l:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    const v1, 0x7f0b03c1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v1, p0, Lha/i9;->m:Landroid/widget/TextView;

    .line 98
    .line 99
    const v1, 0x7f0b0365

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v1, p0, Lha/i9;->n:Landroid/widget/TextView;

    .line 109
    .line 110
    const v1, 0x7f0b0367

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v1, p0, Lha/i9;->p:Landroid/widget/TextView;

    .line 120
    .line 121
    const v1, 0x7f0b0368

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v1, p0, Lha/i9;->q:Landroid/widget/TextView;

    .line 131
    .line 132
    const v1, 0x7f0b036a

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v1, p0, Lha/i9;->r:Landroid/widget/TextView;

    .line 142
    .line 143
    const v1, 0x7f0b0369

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v1, p0, Lha/i9;->s:Landroid/widget/TextView;

    .line 153
    .line 154
    const v1, 0x7f0b0366

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v1, p0, Lha/i9;->t:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object v1, p0, Lha/i9;->l:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lha/i9;->m:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lha/i9;->n:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lha/i9;->p:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lha/i9;->q:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lha/i9;->r:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lha/i9;->s:Landroid/widget/TextView;

    .line 196
    .line 197
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lha/i9;->t:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lha/p6;

    .line 206
    .line 207
    iget-object v2, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 208
    .line 209
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 210
    .line 211
    invoke-direct {v1, v2, v3}, Lha/p6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Lha/i9;->x:Lha/p6;

    .line 215
    .line 216
    const v1, 0x7f0b04f1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 224
    .line 225
    iput-object v1, p0, Lha/i9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 226
    .line 227
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    const/4 v5, 0x0

    .line 231
    invoke-direct {v2, v3, v4, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lx9/t2;

    .line 238
    .line 239
    invoke-direct {v1}, Lx9/t2;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v1, p0, Lha/i9;->w:Lx9/t2;

    .line 243
    .line 244
    iget-object v2, p0, Lha/i9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Ld6/a;

    .line 250
    .line 251
    invoke-direct {v1}, Ld6/a;-><init>()V

    .line 252
    .line 253
    .line 254
    const/4 v2, 0x3

    .line 255
    iput v2, v1, Ld6/a;->h:I

    .line 256
    .line 257
    iput-boolean v5, v1, Ld6/a;->g:Z

    .line 258
    .line 259
    iget-object v2, p0, Lha/i9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lha/i9;->w:Lx9/t2;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ld6/a;->g(Le6/a;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lha/i9;->w:Lx9/t2;

    .line 270
    .line 271
    new-instance v2, Lha/f9;

    .line 272
    .line 273
    invoke-direct {v2, p0}, Lha/f9;-><init>(Lha/i9;)V

    .line 274
    .line 275
    .line 276
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 277
    .line 278
    iget-object v1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 279
    .line 280
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 284
    .line 285
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 289
    .line 290
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lha/i9;->n:Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lha/i9;->p:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Lha/i9;->q:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, p0, Lha/i9;->r:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lha/i9;->s:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lha/i9;->t:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    .line 322
    .line 323
    :try_start_0
    iget-object v1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 324
    .line 325
    const-string v2, "name"

    .line 326
    .line 327
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    const-string v1, "keyCode"

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    const/4 v2, -0x1

    .line 349
    if-eq v1, v2, :cond_0

    .line 350
    .line 351
    iget-object v3, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    :cond_0
    const-string v1, "zhKeyCode"

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eq v1, v2, :cond_1

    .line 371
    .line 372
    iget-object v2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 373
    .line 374
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    :cond_1
    iget-object v1, v0, Lz7/s;->a:Lb8/n;

    .line 382
    .line 383
    invoke-virtual {v1, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_2

    .line 388
    .line 389
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    goto :goto_0

    .line 398
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 399
    .line 400
    invoke-virtual {v0, p1, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 401
    .line 402
    .line 403
    :goto_0
    iget-object p1, p0, Lha/i9;->i:Landroid/widget/ImageView;

    .line 404
    .line 405
    if-eqz v4, :cond_3

    .line 406
    .line 407
    const v0, 0x7f080234

    .line 408
    .line 409
    .line 410
    goto :goto_1

    .line 411
    :cond_3
    const v0, 0x7f080237

    .line 412
    .line 413
    .line 414
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0}, Lha/i9;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .line 419
    .line 420
    :catch_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_8

    .line 6
    .line 7
    const/16 p3, 0x14

    .line 8
    .line 9
    const v0, 0x7f0b0443

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b0464

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0b0466

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne p2, p3, :cond_3

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object p2, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    sub-int/2addr p2, v3

    .line 54
    if-ne p1, p2, :cond_8

    .line 55
    .line 56
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v2, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p2, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p2, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    sub-int/2addr p2, v3

    .line 95
    if-ne p1, p2, :cond_8

    .line 96
    .line 97
    iget-object p1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 100
    .line 101
    .line 102
    return v3

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ne p1, v1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iget-object p2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-object p2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int/2addr p2, v3

    .line 136
    if-ne p1, p2, :cond_8

    .line 137
    .line 138
    iget-object p1, p0, Lha/i9;->n:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 141
    .line 142
    .line 143
    return v3

    .line 144
    :cond_2
    iget-object p1, p0, Lha/i9;->w:Lx9/t2;

    .line 145
    .line 146
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 147
    .line 148
    .line 149
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    if-nez p1, :cond_8

    .line 151
    .line 152
    return v3

    .line 153
    :cond_3
    const/16 p3, 0x13

    .line 154
    .line 155
    if-ne p2, p3, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-ne p2, v2, :cond_4

    .line 162
    .line 163
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p2, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_8

    .line 184
    .line 185
    iget-object p1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 188
    .line 189
    .line 190
    return v3

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-ne p1, v1, :cond_8

    .line 196
    .line 197
    iget-object p1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget-object p2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_8

    .line 218
    .line 219
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 222
    .line 223
    .line 224
    return v3

    .line 225
    :cond_5
    const/16 p3, 0x16

    .line 226
    .line 227
    if-ne p2, p3, :cond_8

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-ne p2, v0, :cond_6

    .line 234
    .line 235
    iget-object p1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iget-object p2, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-ne p1, p2, :cond_8

    .line 256
    .line 257
    iget-object p1, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    iget-object p2, p0, Lha/i9;->g:Landroid/widget/EditText;

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-ne p1, p2, :cond_8

    .line 278
    .line 279
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 282
    .line 283
    .line 284
    return v3

    .line 285
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    if-ne p2, v2, :cond_7

    .line 290
    .line 291
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iget-object p2, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-ne p1, p2, :cond_8

    .line 312
    .line 313
    iget-object p1, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    iget-object p2, p0, Lha/i9;->j:Landroid/widget/EditText;

    .line 324
    .line 325
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    if-ne p1, p2, :cond_8

    .line 334
    .line 335
    iget-object p1, p0, Lha/i9;->l:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 338
    .line 339
    .line 340
    return v3

    .line 341
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-ne p1, v1, :cond_8

    .line 346
    .line 347
    iget-object p1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    iget-object p2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 358
    .line 359
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-ne p1, p2, :cond_8

    .line 368
    .line 369
    iget-object p1, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iget-object p2, p0, Lha/i9;->k:Landroid/widget/EditText;

    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-ne p1, p2, :cond_8

    .line 390
    .line 391
    iget-object p1, p0, Lha/i9;->m:Landroid/widget/TextView;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 394
    .line 395
    .line 396
    return v3

    .line 397
    :catch_0
    :cond_8
    const/4 p1, 0x0

    .line 398
    return p1
.end method
