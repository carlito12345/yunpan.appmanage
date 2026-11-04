.class public final Llf/b;
.super Lab/a;
.source "SourceFile"


# static fields
.field public static final d:Llf/b;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llf/b;

    .line 2
    .line 3
    invoke-direct {v0}, Llf/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llf/b;->d:Llf/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Llf/b;->c:I

    const/4 v0, -0x1

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v0, v1}, Lab/a;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Llf/b;->c:I

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lab/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p1, p0, Llf/b;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p2, "0x"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lab/a;->b:I

    .line 14
    .line 15
    invoke-static {p2, p1}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_0
    iget p1, p0, Lab/a;->b:I

    .line 21
    .line 22
    and-int/lit8 p2, p1, 0xf

    .line 23
    .line 24
    int-to-short p2, p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p2, v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "unknown type:0x"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p2, "%p"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p2, "%"

    .line 46
    .line 47
    :goto_0
    shr-int/lit8 p1, p1, 0x4

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_1
    iget p1, p0, Lab/a;->b:I

    .line 70
    .line 71
    and-int/lit16 p2, p1, 0xff

    .line 72
    .line 73
    int-to-short p2, p2

    .line 74
    if-eqz p2, :cond_7

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    if-eq p2, v0, :cond_6

    .line 78
    .line 79
    const/4 v0, 0x2

    .line 80
    if-eq p2, v0, :cond_5

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    if-eq p2, v0, :cond_4

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    if-eq p2, v0, :cond_3

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    if-eq p2, v0, :cond_2

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "unknown unit:0x"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p2, v0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string p2, "mm"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const-string p2, "in"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const-string p2, "pt"

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const-string p2, "sp"

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    const-string p2, "dp"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    const-string p2, "px"

    .line 119
    .line 120
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    shr-int/lit8 p1, p1, 0x8

    .line 126
    .line 127
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :pswitch_2
    iget p1, p0, Lab/a;->b:I

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :pswitch_3
    iget p1, p0, Lab/a;->b:I

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    const/4 p1, 0x0

    .line 146
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :pswitch_4
    const-string p1, ""

    .line 152
    .line 153
    return-object p1

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
