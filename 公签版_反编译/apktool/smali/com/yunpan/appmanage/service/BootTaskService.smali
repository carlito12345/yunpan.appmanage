.class public Lcom/yunpan/appmanage/service/BootTaskService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/BootTaskService;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/BootTaskService;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lm0/i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lm0/i0;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean p2, p1, Lwa/u;->t:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, "\u542f\u52a8\uff1a\u5f00\u673a\u4efb\u52a1\u524d\u53f0\u670d\u52a1"

    .line 8
    .line 9
    invoke-static {p2}, Lwa/w;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lq4/a;->E(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    sget-object p3, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p3, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_3

    .line 30
    .line 31
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v1, 0x1a

    .line 34
    .line 35
    const-string v2, "BootTaskServiceChannel666"

    .line 36
    .line 37
    const-string v3, "\u5f00\u673a\u4efb\u52a1"

    .line 38
    .line 39
    if-lt p2, v1, :cond_2

    .line 40
    .line 41
    new-instance p2, Landroid/app/NotificationChannel;

    .line 42
    .line 43
    invoke-direct {p2, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 44
    .line 45
    .line 46
    const-class v1, Landroid/app/NotificationManager;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/app/NotificationManager;

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    new-instance p2, Lm0/q;

    .line 58
    .line 59
    invoke-direct {p2, p0, v2}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p2, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 67
    .line 68
    const-string v1, "\u4efb\u52a1\u5b88\u62a4"

    .line 69
    .line 70
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p2, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 75
    .line 76
    iget-object v1, p2, Lm0/q;->m:Landroid/app/Notification;

    .line 77
    .line 78
    const v2, 0x7f08008f

    .line 79
    .line 80
    .line 81
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 82
    .line 83
    const/4 v1, -0x1

    .line 84
    iput v1, p2, Lm0/q;->g:I

    .line 85
    .line 86
    const-string v1, "service"

    .line 87
    .line 88
    iput-object v1, p2, Lm0/q;->i:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p2}, Lm0/q;->c()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lm0/q;->a()Landroid/app/Notification;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const/4 v1, 0x3

    .line 98
    invoke-virtual {p0, v1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 102
    .line 103
    iget-boolean p2, p2, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    iget-object p2, p3, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p2, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-nez p2, :cond_5

    .line 117
    .line 118
    iget-boolean p1, p1, Lwa/u;->t:Z

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    const-string p1, "\u6267\u884c\uff1a\u65e0\u969c\u788d\u5f00\u673a\u4fdd\u6301"

    .line 123
    .line 124
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    iput-boolean v1, p0, Lcom/yunpan/appmanage/service/BootTaskService;->a:Z

    .line 128
    .line 129
    new-instance p1, Ljava/lang/Thread;

    .line 130
    .line 131
    new-instance p2, Lta/h;

    .line 132
    .line 133
    const/4 p3, 0x0

    .line 134
    invoke-direct {p2, p0, p3}, Lta/h;-><init>(Lcom/yunpan/appmanage/service/BootTaskService;I)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-static {p0}, Lq4/a;->E(Landroid/content/Context;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    iput-boolean v1, p0, Lcom/yunpan/appmanage/service/BootTaskService;->b:Z

    .line 150
    .line 151
    new-instance p1, Ljava/lang/Thread;

    .line 152
    .line 153
    new-instance p2, Lta/h;

    .line 154
    .line 155
    const/4 p3, 0x1

    .line 156
    invoke-direct {p2, p0, p3}, Lta/h;-><init>(Lcom/yunpan/appmanage/service/BootTaskService;I)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 163
    .line 164
    .line 165
    :cond_6
    new-instance p1, Lph/j;

    .line 166
    .line 167
    const/16 p2, 0x9

    .line 168
    .line 169
    invoke-direct {p1, p2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    new-instance p2, Lmc/c;

    .line 173
    .line 174
    const/4 p3, 0x0

    .line 175
    invoke-direct {p2, p3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 179
    .line 180
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance p2, Lka/c;

    .line 193
    .line 194
    const/4 p3, 0x4

    .line 195
    invoke-direct {p2, p3, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 199
    .line 200
    .line 201
    return v0
.end method
