.class Lcom/hjq/toast/ToastImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/toast/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/toast/ToastImpl;


# direct methods
.method public constructor <init>(Lcom/hjq/toast/ToastImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/hjq/toast/ToastImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hjq/toast/ToastImpl$1;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hjq/toast/ToastImpl;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hjq/toast/CustomToast;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/hjq/toast/ToastImpl;->access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/hjq/toast/WindowLifecycle;->getWindowManager()Landroid/view/WindowManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v3, -0x2

    .line 33
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 34
    .line 35
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    .line 37
    const/4 v3, -0x3

    .line 38
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    .line 40
    const/16 v3, 0x98

    .line 41
    .line 42
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    .line 44
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$200(Lcom/hjq/toast/ToastImpl;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getGravity()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    .line 64
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getXOffset()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 75
    .line 76
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getYOffset()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getVerticalMargin()F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 99
    .line 100
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getHorizontalMargin()F

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 111
    .line 112
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getAnimationsId()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 123
    .line 124
    const-string v3, "Toast"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 v4, 0x1c

    .line 132
    .line 133
    if-lt v3, v4, :cond_2

    .line 134
    .line 135
    invoke-static {v2}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object v4, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/hjq/toast/ToastImpl;->access$300(Lcom/hjq/toast/ToastImpl;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    const/16 v4, 0x1a

    .line 147
    .line 148
    if-lt v3, v4, :cond_3

    .line 149
    .line 150
    const/16 v3, 0x7f6

    .line 151
    .line 152
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 153
    .line 154
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    .line 156
    and-int/lit8 v3, v3, -0x11

    .line 157
    .line 158
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_3
    const/16 v3, 0x7d3

    .line 162
    .line 163
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 164
    .line 165
    :cond_4
    :goto_0
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/hjq/toast/ToastImpl;->access$400()Landroid/os/Handler;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Lcom/hjq/toast/a;

    .line 173
    .line 174
    invoke-direct {v2, p0}, Lcom/hjq/toast/a;-><init>(Lcom/hjq/toast/ToastImpl$1;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 178
    .line 179
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getDuration()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/4 v4, 0x1

    .line 188
    if-ne v3, v4, :cond_5

    .line 189
    .line 190
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getLongDuration()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    :goto_1
    int-to-long v5, v3

    .line 201
    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    goto :goto_3

    .line 204
    :cond_5
    iget-object v3, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 205
    .line 206
    invoke-static {v3}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3}, Lcom/hjq/toast/CustomToast;->getShortDuration()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    goto :goto_1

    .line 215
    :goto_2
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/hjq/toast/ToastImpl;->access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lcom/hjq/toast/WindowLifecycle;->register(Lcom/hjq/toast/ToastImpl;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 230
    .line 231
    invoke-virtual {v1, v4}, Lcom/hjq/toast/ToastImpl;->setShow(Z)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$1;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 235
    .line 236
    invoke-static {v1, v0}, Lcom/hjq/toast/ToastImpl;->access$500(Lcom/hjq/toast/ToastImpl;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    :goto_4
    return-void
.end method
