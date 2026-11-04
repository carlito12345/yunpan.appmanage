.class public final synthetic Lcom/hjq/permissions/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/hjq/permissions/core/c;->a:I

    iput-object p1, p0, Lcom/hjq/permissions/core/c;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, v1, Lcom/hjq/permissions/core/c;->b:Landroid/app/Activity;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    iget v6, v1, Lcom/hjq/permissions/core/c;->a:I

    .line 9
    .line 10
    packed-switch v6, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_a

    .line 18
    .line 19
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v7, 0x1c

    .line 22
    .line 23
    if-lt v6, v7, :cond_0

    .line 24
    .line 25
    sget-object v0, Lm0/g;->a:Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_0
    sget-object v7, Lm0/g;->a:Ljava/lang/Class;

    .line 33
    .line 34
    const/16 v7, 0x1b

    .line 35
    .line 36
    const/16 v8, 0x1a

    .line 37
    .line 38
    if-eq v6, v8, :cond_2

    .line 39
    .line 40
    if-ne v6, v7, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v9, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 v9, 0x1

    .line 46
    :goto_1
    sget-object v10, Lm0/g;->f:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    if-nez v10, :cond_3

    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_3
    sget-object v9, Lm0/g;->e:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    if-nez v9, :cond_4

    .line 57
    .line 58
    sget-object v9, Lm0/g;->d:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    if-nez v9, :cond_4

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_4
    :try_start_0
    sget-object v9, Lm0/g;->c:Ljava/lang/reflect/Field;

    .line 65
    .line 66
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-nez v9, :cond_5

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_5
    sget-object v11, Lm0/g;->b:Ljava/lang/reflect/Field;

    .line 75
    .line 76
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    if-nez v11, :cond_6

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_6
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    new-instance v13, Lm0/f;

    .line 88
    .line 89
    invoke-direct {v13, v4}, Lm0/f;-><init>(Landroid/app/Activity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v13}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .line 94
    .line 95
    sget-object v14, Lm0/g;->g:Landroid/os/Handler;

    .line 96
    .line 97
    :try_start_1
    new-instance v15, Ly7/b;

    .line 98
    .line 99
    const/16 v2, 0xe

    .line 100
    .line 101
    invoke-direct {v15, v13, v2, v9}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    .line 107
    if-eq v6, v8, :cond_8

    .line 108
    .line 109
    if-ne v6, v7, :cond_7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    const/4 v2, 0x0

    .line 113
    goto :goto_3

    .line 114
    :cond_8
    :goto_2
    const/4 v2, 0x1

    .line 115
    :goto_3
    if-eqz v2, :cond_9

    .line 116
    .line 117
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/16 v6, 0x9

    .line 122
    .line 123
    new-array v6, v6, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v9, v6, v0

    .line 126
    .line 127
    aput-object v5, v6, v3

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    aput-object v5, v6, v0

    .line 131
    .line 132
    const/4 v0, 0x3

    .line 133
    aput-object v2, v6, v0

    .line 134
    .line 135
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 136
    .line 137
    const/4 v2, 0x4

    .line 138
    aput-object v0, v6, v2

    .line 139
    .line 140
    const/4 v2, 0x5

    .line 141
    aput-object v5, v6, v2

    .line 142
    .line 143
    const/4 v2, 0x6

    .line 144
    aput-object v5, v6, v2

    .line 145
    .line 146
    const/4 v2, 0x7

    .line 147
    aput-object v0, v6, v2

    .line 148
    .line 149
    const/16 v2, 0x8

    .line 150
    .line 151
    aput-object v0, v6, v2

    .line 152
    .line 153
    invoke-virtual {v10, v11, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    .line 162
    :goto_4
    :try_start_3
    new-instance v0, Ly7/b;

    .line 163
    .line 164
    const/16 v2, 0xf

    .line 165
    .line 166
    invoke-direct {v0, v12, v2, v13}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :goto_5
    new-instance v2, Ly7/b;

    .line 174
    .line 175
    const/16 v3, 0xf

    .line 176
    .line 177
    invoke-direct {v2, v12, v3, v13}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :catchall_1
    :goto_6
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    .line 185
    .line 186
    .line 187
    :cond_a
    :goto_7
    return-void

    .line 188
    :pswitch_0
    invoke-static {v4}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->a(Landroid/app/Activity;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
