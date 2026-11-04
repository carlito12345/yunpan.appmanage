.class public final Lua/l2;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityImage2;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l2;->b:I

    iput-object p1, p0, Lua/l2;->c:Lcom/yunpan/appmanage/ui/ActivityImage2;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lua/l2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "\u65cb\u8f6c\u5931\u8d25"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lua/l2;->c:Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 32
    .line 33
    const v0, 0x7f0802a0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->resource(I)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/l2;->c:Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 2
    .line 3
    iget v1, p0, Lua/l2;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 14
    .line 15
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "/rotation.ming"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityImage2;->z(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityImage2;->z(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->F:Landroid/widget/TextView;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "\u7b2c "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 52
    .line 53
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 54
    .line 55
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 56
    .line 57
    iget v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    add-int/2addr v4, v5

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " \u5f20\uff0c\u5171 "

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " \u5f20"

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->H:Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v2, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 95
    .line 96
    iget-object v4, v2, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 97
    .line 98
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 99
    .line 100
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 112
    .line 113
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    .line 118
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 124
    .line 125
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 126
    .line 127
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->G:Landroid/widget/TextView;

    .line 128
    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, "*"

    .line 138
    .line 139
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "   "

    .line 146
    .line 147
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 151
    .line 152
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 153
    .line 154
    iget v1, v1, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 155
    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 175
    .line 176
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 177
    .line 178
    if-eqz v2, :cond_0

    .line 179
    .line 180
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 181
    .line 182
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 183
    .line 184
    mul-int/lit16 v1, v1, 0x3e8

    .line 185
    .line 186
    int-to-long v1, v1

    .line 187
    const/4 v3, 0x0

    .line 188
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    .line 190
    .line 191
    :cond_0
    return-void

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
