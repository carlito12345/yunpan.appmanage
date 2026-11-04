.class public Lcom/yunpan/appmanage/ui/ActivityNezha;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Lha/u9;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static y()Z
    .locals 6

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string v2, "yyyyMMdd"

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "0000000000000000"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    :try_start_0
    const-string v3, "ASDFGHJKLASDFGHI"

    .line 46
    .line 47
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v5, "AES"

    .line 54
    .line 55
    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "AES/ECB/PKCS7Padding"

    .line 59
    .line 60
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/16 v3, 0x9

    .line 89
    .line 90
    if-lt v1, v3, :cond_1

    .line 91
    .line 92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    sub-int/2addr v1, v3

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 107
    .line 108
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v3, "dev_adb_auth_passwd"

    .line 117
    .line 118
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    return v5

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 126
    .line 127
    const-string v1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 136
    .line 137
    const-string v1, "\u751f\u6210\u5bc6\u7801\u9519\u8bef"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    return v2
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05ba

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u54ea\u5412\u8f66\u673a\u4e13\u7528\u529f\u80fd"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lha/u9;

    .line 21
    .line 22
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 28
    .line 29
    const v0, 0x7f0b03ad

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    new-instance v1, Lua/g1;

    .line 39
    .line 40
    const/16 v2, 0x13

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0b04f1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 58
    .line 59
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lx9/k3;

    .line 69
    .line 70
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 74
    .line 75
    const v1, 0x7f0802e8

    .line 76
    .line 77
    .line 78
    const-string v2, "\u4e34\u65f6\u5f00\u542f\u65e0\u7ebfADB"

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 84
    .line 85
    const v1, 0x7f0802bf

    .line 86
    .line 87
    .line 88
    const-string v2, "adb\u63d0\u6743(\u5c06adb\u4e34\u65f6\u63d0\u5347\u4e3aroot\u6743\u9650)"

    .line 89
    .line 90
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 94
    .line 95
    const v1, 0x7f080258

    .line 96
    .line 97
    .line 98
    const-string v2, "(\u4e3b\u5c4f)\u7cfb\u7edf\u684c\u9762\u7ba1\u7406-1.2  \u54ea\u5412S\u3001GT"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 104
    .line 105
    const v2, 0x7f0801d3

    .line 106
    .line 107
    .line 108
    const-string v3, "adb\u63d0\u6743(\u6302\u8f7d\u7cfb\u7edf\u76ee\u5f55\u83b7\u53d6\u5199\u5165\u6743\u9650)"

    .line 109
    .line 110
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 114
    .line 115
    const-string v2, "(\u4e3b\u5c4f)\u7cfb\u7edf\u684c\u9762\u7ba1\u7406-1.3  \u54ea\u5412L"

    .line 116
    .line 117
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 121
    .line 122
    const-string v2, "(\u54ea\u5412X)\u7cfb\u7edf\u5e94\u7528\u4e2d\u5fc3\u7ba1\u7406"

    .line 123
    .line 124
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 128
    .line 129
    const v1, 0x7f08021f

    .line 130
    .line 131
    .line 132
    const-string v2, "\u5b89\u88c5\u5e94\u7528\u5230\u4e3b\u5c4f"

    .line 133
    .line 134
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 138
    .line 139
    const-string v2, "\u5b89\u88c5\u5e94\u7528\u5230\u526f\u5c4f"

    .line 140
    .line 141
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 145
    .line 146
    new-instance v1, Lx9/l3;

    .line 147
    .line 148
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 149
    .line 150
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    .line 158
    const v2, 0x7f080237

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_0
    const v2, 0x7f080234

    .line 163
    .line 164
    .line 165
    :goto_0
    const-string v3, "\u81ea\u52a8\u89e3\u9664\u5b89\u88c5\u9650\u5236(\u54ea\u5412U\u3001V\u3001AYA)"

    .line 166
    .line 167
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    .line 181
    .line 182
    new-instance v1, Lph/j;

    .line 183
    .line 184
    const/16 v2, 0x1a

    .line 185
    .line 186
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 190
    .line 191
    return-void
.end method

.method public final x(Z)V
    .locals 4

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->Q()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lha/a3;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    invoke-direct {v1, v2, v0}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lmc/c;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lua/z3;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-direct {v2, v3, p0, v0, p1}, Lua/z3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
