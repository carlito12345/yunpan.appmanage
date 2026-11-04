.class public final synthetic Lha/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/x0;


# direct methods
.method public synthetic constructor <init>(Lha/x0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/v0;->a:I

    iput-object p1, p0, Lha/v0;->b:Lha/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/v0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/v0;->b:Lha/x0;

    .line 7
    .line 8
    iget-object v0, p1, Lha/x0;->q:Lx9/d0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p1, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lz7/o;

    .line 24
    .line 25
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p1, Lha/x0;->q:Lx9/d0;

    .line 30
    .line 31
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p1, Lha/x0;->q:Lx9/d0;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lx9/w3;

    .line 44
    .line 45
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lz7/o;->j(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Lz7/s;

    .line 54
    .line 55
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v2, p1, Lha/x0;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 59
    .line 60
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "systemVolumeType"

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p1, Lha/x0;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "systemVolume"

    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v2, p1, Lha/x0;->k:Z

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "isMute"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p1, Lha/x0;->l:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 98
    .line 99
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "usage"

    .line 106
    .line 107
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p1, Lha/x0;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 111
    .line 112
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "AudioDeviceId"

    .line 119
    .line 120
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p1, Lha/x0;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    mul-int/lit8 p1, p1, 0x64

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v2, "volumeGain"

    .line 136
    .line 137
    invoke-virtual {v1, v2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 138
    .line 139
    .line 140
    const-string p1, "files"

    .line 141
    .line 142
    invoke-virtual {v1, p1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lya/l;

    .line 146
    .line 147
    invoke-direct {p1, v1}, Lya/l;-><init>(Lz7/s;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :pswitch_0
    iget-object p1, p0, Lha/v0;->b:Lha/x0;

    .line 152
    .line 153
    invoke-static {p1}, Lha/x0;->a(Lha/x0;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
