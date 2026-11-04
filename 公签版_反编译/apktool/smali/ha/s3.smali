.class public final synthetic Lha/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/v3;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

.field public final synthetic d:Lc6/g;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lha/v3;Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V
    .locals 0

    .line 1
    iput p5, p0, Lha/s3;->a:I

    iput-object p1, p0, Lha/s3;->b:Lha/v3;

    iput-object p2, p0, Lha/s3;->c:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    iput-object p3, p0, Lha/s3;->d:Lc6/g;

    iput p4, p0, Lha/s3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    .line 1
    iget v0, p0, Lha/s3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/s3;->b:Lha/v3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr p1, v2

    .line 15
    mul-int/lit8 p1, p1, 0x5

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iput p1, v1, Lwa/u;->A:I

    .line 21
    .line 22
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 23
    .line 24
    const-string v4, "FuseProtectionLogcatCount"

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, v4, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lha/s3;->c:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 37
    .line 38
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d1"

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, v1, Lwa/u;->A:I

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const-string v1, "40"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "\u6b21\u65e5\u5fd7\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u9a6c\u4e0a\u505c\u6b62\u81ea\u52a8\u5316"

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->name:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p1, p0, Lha/s3;->d:Lc6/g;

    .line 73
    .line 74
    iget v1, p0, Lha/s3;->e:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p1}, Lta/m;->e(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lha/s3;->b:Lha/v3;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    add-int/2addr p1, v2

    .line 94
    mul-int/lit8 p1, p1, 0x5

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    :try_start_1
    iput p1, v1, Lwa/u;->z:I

    .line 100
    .line 101
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 102
    .line 103
    const-string v4, "AutoTaskSafetyProtectionTwoCount"

    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v3, v4, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    :catch_1
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lha/s3;->c:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 116
    .line 117
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d1"

    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget v1, v1, Lwa/u;->z:I

    .line 127
    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    const-string v1, "40"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "\u6b21\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u9a6c\u4e0a\u505c\u6b62\u81ea\u52a8\u5316"

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->name:Ljava/lang/String;

    .line 150
    .line 151
    iget-object p1, p0, Lha/s3;->d:Lc6/g;

    .line 152
    .line 153
    iget v1, p0, Lha/s3;->e:I

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p1}, Lta/m;->e(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
