.class public final synthetic Lha/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/p5;


# direct methods
.method public synthetic constructor <init>(Lha/p5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/hf;->a:I

    iput-object p1, p0, Lha/hf;->b:Lha/p5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lha/hf;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/hf;->b:Lha/p5;

    .line 7
    .line 8
    iget-object v0, p1, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "adb_enabled"

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eq v2, v1, :cond_0

    .line 23
    .line 24
    const-string v2, "\u8bf7\u5148\u5728\u539f\u751f\u8bbe\u7f6e\u4e2d\u6253\u5f00\u3010USB\u8c03\u8bd5\u3011"

    .line 25
    .line 26
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    nop

    .line 31
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lha/jd;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    invoke-direct {v0, v1}, Lha/jd;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 64
    .line 65
    .line 66
    const-string p1, "\u8bf7\u5230\u8f66\u673a\u84dd\u7259\u754c\u9762\u4e2d\uff0c\u7b49\u5f85\u6388\u6743\u7a97\u53e3\u5f39\u51fa"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 72
    .line 73
    new-instance v0, Lv8/a;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lv8/a;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f0e0219

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lv8/a;->j(I)V

    .line 82
    .line 83
    .line 84
    const-string p1, "XingTuAdbDialog"

    .line 85
    .line 86
    iput-object p1, v0, Lv8/a;->h:Ljava/lang/String;

    .line 87
    .line 88
    const/16 p1, 0x100

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lv8/a;->a(I)V

    .line 91
    .line 92
    .line 93
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v2, 0x1c

    .line 96
    .line 97
    if-lt p1, v2, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-virtual {v0, v1}, Lv8/a;->l(I)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lw8/b;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-direct {p1, v1}, Lw8/b;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lv8/a;->q(Lw8/b;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lv8/a;->p()V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lha/jd;

    .line 117
    .line 118
    const/4 v1, 0x5

    .line 119
    invoke-direct {p1, v1}, Lha/jd;-><init>(I)V

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0b036e

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, p1}, Lv8/a;->m(ILv8/c;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lha/jd;

    .line 129
    .line 130
    const/4 v1, 0x6

    .line 131
    invoke-direct {p1, v1}, Lha/jd;-><init>(I)V

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0b036b

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, p1}, Lv8/a;->m(ILv8/c;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lv8/a;->d()V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void

    .line 144
    :pswitch_0
    iget-object p1, p0, Lha/hf;->b:Lha/p5;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    :try_start_1
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "adb_enabled"

    .line 156
    .line 157
    const/4 v1, -0x1

    .line 158
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    const/4 v0, 0x1

    .line 163
    if-eq p1, v0, :cond_3

    .line 164
    .line 165
    const-string p1, "\u8bf7\u5148\u5728\u539f\u751f\u8bbe\u7f6e\u4e2d\u6253\u5f00\u3010USB\u8c03\u8bd5\u3011"

    .line 166
    .line 167
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catch_1
    :cond_3
    const-string p1, "\u7b49\u5f85\u6388\u6743\u7a97\u53e3\u5f39\u51fa\uff0c\u52fe\u9009\u4e00\u5f8b\u5141\u8bb8 \u5e76\u70b9 \u786e\u8ba4"

    .line 172
    .line 173
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lfg/b;

    .line 177
    .line 178
    new-instance v0, Lcom/gj/server/a;

    .line 179
    .line 180
    const/4 v1, 0x4

    .line 181
    invoke-direct {v0, v1}, Lcom/gj/server/a;-><init>(I)V

    .line 182
    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-direct {p1, v0, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 189
    .line 190
    .line 191
    new-instance p1, Lfg/b;

    .line 192
    .line 193
    new-instance v0, Lcom/gj/server/a;

    .line 194
    .line 195
    const/4 v1, 0x4

    .line 196
    invoke-direct {v0, v1}, Lcom/gj/server/a;-><init>(I)V

    .line 197
    .line 198
    .line 199
    const/4 v1, 0x1

    .line 200
    invoke-direct {p1, v0, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 204
    .line 205
    .line 206
    new-instance p1, Lfg/b;

    .line 207
    .line 208
    new-instance v0, Lcom/gj/server/a;

    .line 209
    .line 210
    const/4 v1, 0x4

    .line 211
    invoke-direct {v0, v1}, Lcom/gj/server/a;-><init>(I)V

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x1

    .line 215
    invoke-direct {p1, v0, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 219
    .line 220
    .line 221
    :goto_2
    return-void

    .line 222
    :pswitch_1
    iget-object p1, p0, Lha/hf;->b:Lha/p5;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
