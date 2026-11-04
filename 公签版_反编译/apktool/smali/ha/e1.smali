.class public final synthetic Lha/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/e1;->a:I

    iput-object p2, p0, Lha/e1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 4

    .line 1
    iget v0, p0, Lha/e1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/e1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ls1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x3

    .line 15
    const/4 v3, -0x2

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-eq p1, v3, :cond_2

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    const-string v0, "Unknown focus change type: "

    .line 26
    .line 27
    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 p1, 0x2

    .line 32
    invoke-virtual {v0, p1}, Ls1/b;->c(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ls1/b;->b(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {v0, v2}, Ls1/b;->b(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ls1/b;->a()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ls1/b;->c(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    if-eq p1, v3, :cond_5

    .line 51
    .line 52
    iget-object p1, v0, Ls1/b;->d:Lr1/d;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget p1, p1, Lr1/d;->a:I

    .line 57
    .line 58
    if-ne p1, v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_0
    if-eqz v1, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const/4 p1, 0x4

    .line 66
    invoke-virtual {v0, p1}, Ls1/b;->c(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Ls1/b;->b(I)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x3

    .line 74
    invoke-virtual {v0, p1}, Ls1/b;->c(I)V

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lha/e1;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lha/g1;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v1, -0x3

    .line 86
    if-eq p1, v1, :cond_6

    .line 87
    .line 88
    const/4 v1, -0x2

    .line 89
    if-eq p1, v1, :cond_6

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    if-eq p1, v1, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {v0}, Lha/g1;->b()V

    .line 96
    .line 97
    .line 98
    :goto_3
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lha/e1;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lha/g1;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/4 v1, -0x3

    .line 107
    if-eq p1, v1, :cond_7

    .line 108
    .line 109
    const/4 v1, -0x2

    .line 110
    if-eq p1, v1, :cond_7

    .line 111
    .line 112
    const/4 v1, -0x1

    .line 113
    if-eq p1, v1, :cond_7

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_7
    invoke-virtual {v0}, Lha/g1;->b()V

    .line 117
    .line 118
    .line 119
    :goto_4
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
