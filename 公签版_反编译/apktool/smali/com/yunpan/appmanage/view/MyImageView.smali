.class public Lcom/yunpan/appmanage/view/MyImageView;
.super Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.source "SourceFile"


# instance fields
.field public a:Lxa/c;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 6
    .line 7
    iput p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->e:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    if-eq v0, v2, :cond_6

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v4, p0, Lcom/yunpan/appmanage/view/MyImageView;->b:F

    .line 21
    .line 22
    sub-float/2addr v0, v4

    .line 23
    iput v0, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v0, p0, Lcom/yunpan/appmanage/view/MyImageView;->c:F

    .line 30
    .line 31
    sub-float/2addr p1, v0

    .line 32
    iput p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->e:F

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget v0, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/high16 v4, 0x42480000    # 50.0f

    .line 45
    .line 46
    cmpl-float p1, p1, v0

    .line 47
    .line 48
    if-lez p1, :cond_3

    .line 49
    .line 50
    iget p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->e:F

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    cmpl-float p1, p1, v4

    .line 57
    .line 58
    if-lez p1, :cond_2

    .line 59
    .line 60
    iget p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->e:F

    .line 61
    .line 62
    cmpl-float p1, p1, v1

    .line 63
    .line 64
    if-lez p1, :cond_1

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 77
    .line 78
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 79
    .line 80
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 81
    .line 82
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    cmpl-float p1, p1, v4

    .line 92
    .line 93
    if-lez p1, :cond_5

    .line 94
    .line 95
    iget p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 96
    .line 97
    cmpl-float p1, p1, v1

    .line 98
    .line 99
    if-lez p1, :cond_4

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 107
    .line 108
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 112
    .line 113
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 114
    .line 115
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 116
    .line 117
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 118
    .line 119
    :goto_0
    return v3

    .line 120
    :cond_6
    iget-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    iget-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 125
    .line 126
    invoke-interface {p1}, Lxa/c;->d()V

    .line 127
    .line 128
    .line 129
    return v2

    .line 130
    :cond_7
    iget-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    iget-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 135
    .line 136
    invoke-interface {p1}, Lxa/c;->f()V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :cond_8
    iget-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 141
    .line 142
    if-eqz p1, :cond_9

    .line 143
    .line 144
    iget-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :cond_9
    iget-boolean p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 151
    .line 152
    if-eqz p1, :cond_a

    .line 153
    .line 154
    iget-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    return v2

    .line 160
    :cond_a
    iget-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 161
    .line 162
    invoke-interface {p1}, Lxa/c;->h()V

    .line 163
    .line 164
    .line 165
    return v3

    .line 166
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iput v0, p0, Lcom/yunpan/appmanage/view/MyImageView;->b:F

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->c:F

    .line 177
    .line 178
    iput v1, p0, Lcom/yunpan/appmanage/view/MyImageView;->d:F

    .line 179
    .line 180
    iput v1, p0, Lcom/yunpan/appmanage/view/MyImageView;->e:F

    .line 181
    .line 182
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->g:Z

    .line 183
    .line 184
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->f:Z

    .line 185
    .line 186
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->i:Z

    .line 187
    .line 188
    iput-boolean v3, p0, Lcom/yunpan/appmanage/view/MyImageView;->h:Z

    .line 189
    .line 190
    return v2
.end method

.method public setOnTouchDirection(Lxa/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/view/MyImageView;->a:Lxa/c;

    .line 2
    .line 3
    return-void
.end method
