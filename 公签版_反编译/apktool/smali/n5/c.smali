.class public final Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final a:Lo5/v;

.field public final b:I

.field public final c:I

.field public final d:Lf5/b;

.field public final e:Lo5/n;

.field public final f:Z

.field public final g:Lf5/j;


# direct methods
.method public constructor <init>(IILf5/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lo5/v;->a()Lo5/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ln5/c;->a:Lo5/v;

    .line 9
    .line 10
    iput p1, p0, Ln5/c;->b:I

    .line 11
    .line 12
    iput p2, p0, Ln5/c;->c:I

    .line 13
    .line 14
    sget-object p1, Lo5/p;->f:Lf5/h;

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lf5/b;

    .line 21
    .line 22
    iput-object p1, p0, Ln5/c;->d:Lf5/b;

    .line 23
    .line 24
    sget-object p1, Lo5/n;->g:Lf5/h;

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lo5/n;

    .line 31
    .line 32
    iput-object p1, p0, Ln5/c;->e:Lo5/n;

    .line 33
    .line 34
    sget-object p1, Lo5/p;->i:Lf5/h;

    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    iput-boolean p1, p0, Ln5/c;->f:Z

    .line 58
    .line 59
    sget-object p1, Lo5/p;->g:Lf5/h;

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lf5/j;

    .line 66
    .line 67
    iput-object p1, p0, Ln5/c;->g:Lf5/j;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 5

    .line 1
    iget-object p3, p0, Ln5/c;->a:Lo5/v;

    .line 2
    .line 3
    iget v0, p0, Ln5/c;->b:I

    .line 4
    .line 5
    iget v1, p0, Ln5/c;->c:I

    .line 6
    .line 7
    iget-boolean v2, p0, Ln5/c;->f:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p3, v0, v1, v2, v3}, Lo5/v;->c(IIZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/emoji2/text/b;->s(Landroid/graphics/ImageDecoder;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Landroidx/emoji2/text/b;->C(Landroid/graphics/ImageDecoder;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p3, p0, Ln5/c;->d:Lf5/b;

    .line 24
    .line 25
    sget-object v0, Lf5/b;->b:Lf5/b;

    .line 26
    .line 27
    if-ne p3, v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/emoji2/text/b;->D(Landroid/graphics/ImageDecoder;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance p3, Ln5/b;

    .line 33
    .line 34
    invoke-direct {p3}, Ln5/b;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p3}, Landroidx/emoji2/text/b;->v(Landroid/graphics/ImageDecoder;Ln5/b;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroidx/emoji2/text/b;->o(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget v0, p0, Ln5/c;->b:I

    .line 45
    .line 46
    const/high16 v1, -0x80000000

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    invoke-static {p3}, Lm0/o;->c(Landroid/util/Size;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_2
    iget v2, p0, Ln5/c;->c:I

    .line 55
    .line 56
    if-ne v2, v1, :cond_3

    .line 57
    .line 58
    invoke-static {p3}, Lm0/o;->t(Landroid/util/Size;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_3
    iget-object v1, p0, Ln5/c;->e:Lo5/n;

    .line 63
    .line 64
    invoke-static {p3}, Lm0/o;->c(Landroid/util/Size;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {p3}, Lm0/o;->t(Landroid/util/Size;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v1, v3, v4, v0, v2}, Lo5/n;->b(IIII)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p3}, Lm0/o;->c(Landroid/util/Size;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    mul-float v1, v1, v0

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {p3}, Lm0/o;->t(Landroid/util/Size;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-float v2, v2

    .line 92
    mul-float v0, v0, v2

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const-string v2, "ImageDecoder"

    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-static {p3}, Lm0/o;->q(Landroid/util/Size;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p3}, Lm0/o;->v(Landroid/util/Size;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-static {p1, v1, v0}, Landroidx/emoji2/text/b;->t(Landroid/graphics/ImageDecoder;II)V

    .line 114
    .line 115
    .line 116
    iget-object p3, p0, Ln5/c;->g:Lf5/j;

    .line 117
    .line 118
    if-eqz p3, :cond_7

    .line 119
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v1, 0x1c

    .line 123
    .line 124
    if-lt v0, v1, :cond_6

    .line 125
    .line 126
    sget-object v0, Lf5/j;->a:Lf5/j;

    .line 127
    .line 128
    if-ne p3, v0, :cond_5

    .line 129
    .line 130
    invoke-static {p2}, Landroidx/emoji2/text/b;->f(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    if-eqz p3, :cond_5

    .line 135
    .line 136
    invoke-static {p2}, Landroidx/emoji2/text/b;->f(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p2}, Leg/a;->s(Landroid/graphics/ColorSpace;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_5

    .line 145
    .line 146
    invoke-static {}, Ln5/a;->f()Landroid/graphics/ColorSpace$Named;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    invoke-static {}, Ln5/a;->y()Landroid/graphics/ColorSpace$Named;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    :goto_1
    invoke-static {p2}, Ln5/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {p1, p2}, Landroidx/emoji2/text/b;->u(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    const/16 p2, 0x1a

    .line 164
    .line 165
    if-lt v0, p2, :cond_7

    .line 166
    .line 167
    invoke-static {}, Ln5/a;->y()Landroid/graphics/ColorSpace$Named;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p2}, Ln5/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, p2}, Landroidx/emoji2/text/b;->u(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_2
    return-void
.end method
