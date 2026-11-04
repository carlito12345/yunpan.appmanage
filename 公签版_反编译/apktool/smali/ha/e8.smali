.class public final synthetic Lha/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/e;
.implements Lha/n1;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILea/e;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/e8;->a:I

    iput p1, p0, Lha/e8;->b:I

    iput p2, p0, Lha/e8;->c:I

    iput-object p3, p0, Lha/e8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;II)V
    .locals 1

    .line 2
    const/4 v0, 0x6

    iput v0, p0, Lha/e8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/e8;->d:Ljava/lang/Object;

    iput p2, p0, Lha/e8;->b:I

    iput p3, p0, Lha/e8;->c:I

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lha/e8;->b:I

    .line 2
    .line 3
    iget v1, p0, Lha/e8;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lea/e;

    .line 8
    .line 9
    const-string v3, " "

    .line 10
    .line 11
    const-string v4, "("

    .line 12
    .line 13
    :try_start_0
    new-instance v5, Lz7/s;

    .line 14
    .line 15
    invoke-direct {v5}, Lz7/s;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v6, "keyType"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v5, v6, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "gnType"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v5, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "name"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ") settings put "

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v5, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "type1"

    .line 78
    .line 79
    invoke-virtual {v5, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "type2"

    .line 83
    .line 84
    invoke-virtual {v5, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p1, "key"

    .line 88
    .line 89
    invoke-virtual {v5, p1, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "value"

    .line 93
    .line 94
    invoke-virtual {v5, p1, p4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v2, v5}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->K:I

    .line 2
    .line 3
    iget-object v0, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lha/e8;->b:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v1, v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    const-string v1, "animator_duration_scale"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "transition_animation_scale"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string v1, "window_animation_scale"

    .line 29
    .line 30
    :goto_0
    iget v3, p0, Lha/e8;->c:I

    .line 31
    .line 32
    packed-switch v3, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :pswitch_0
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_1
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    const/high16 v3, 0x3f400000    # 0.75f

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_4
    const/high16 v3, 0x3f000000    # 0.5f

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_5
    const/high16 v3, 0x3e800000    # 0.25f

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_6
    const/4 v3, 0x0

    .line 55
    :goto_1
    const/4 v4, 0x0

    .line 56
    :try_start_0
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 63
    .line 64
    .line 65
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_2
    if-nez v0, :cond_4

    .line 73
    .line 74
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v6, "settings put global "

    .line 79
    .line 80
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " "

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget v0, v0, Lfa/a0;->a:I

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    const/4 v2, 0x0

    .line 111
    :goto_3
    move v0, v2

    .line 112
    :cond_4
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 119
    .line 120
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lz7/s;)V
    .locals 4

    .line 1
    iget v0, p0, Lha/e8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget v0, p0, Lha/e8;->b:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "keyType"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lha/e8;->c:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "gnType"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lea/e;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lea/e;->k(Lz7/s;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget v0, p0, Lha/e8;->b:I

    .line 37
    .line 38
    iget v1, p0, Lha/e8;->c:I

    .line 39
    .line 40
    iget-object v2, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lea/e;

    .line 43
    .line 44
    :try_start_0
    const-string v3, "keyType"

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "gnType"

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, p1}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    return-void

    .line 66
    :pswitch_2
    iget v0, p0, Lha/e8;->b:I

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "keyType"

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lha/e8;->c:I

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "gnType"

    .line 84
    .line 85
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lea/e;

    .line 91
    .line 92
    invoke-interface {v0, p1}, Lea/e;->k(Lz7/s;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_3
    iget v0, p0, Lha/e8;->b:I

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "keyType"

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lha/e8;->c:I

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "gnType"

    .line 114
    .line 115
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lha/e8;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lea/e;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Lea/e;->k(Lz7/s;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
