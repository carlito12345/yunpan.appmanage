.class public final synthetic Lua/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lea/e;
.implements Lha/y6;
.implements Lha/i3;
.implements Lha/q0;
.implements Lha/n1;
.implements Lha/h7;
.implements Lea/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/t0;->a:I

    iput-object p1, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    iput-object p2, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "str1"

    .line 3
    .line 4
    const-string v2, "name"

    .line 5
    .line 6
    const-string v3, "type"

    .line 7
    .line 8
    const-string v4, "isOpen"

    .line 9
    .line 10
    const-string v5, "\uff1a"

    .line 11
    .line 12
    iget-object v6, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 13
    .line 14
    iget-object v7, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 15
    .line 16
    iget v8, p0, Lua/t0;->a:I

    .line 17
    .line 18
    packed-switch v8, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget v8, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v8, v9, v5, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    new-instance v8, Lz7/s;

    .line 38
    .line 39
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v8, v4, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    iget v4, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v8, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v2, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v0, v8, v5}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    sget v8, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v8, v9, v5, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v8, Lz7/s;

    .line 83
    .line 84
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v8, v4, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    iget v4, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v8, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v2, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v0, v8, v5}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 6

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    const/16 v2, 0x14

    .line 11
    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x13

    .line 15
    .line 16
    mul-int/lit8 p1, p1, 0x5

    .line 17
    .line 18
    add-int/lit8 v1, p1, 0x1e

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v2, 0xa

    .line 22
    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x9

    .line 26
    .line 27
    mul-int/lit8 p1, p1, 0x2

    .line 28
    .line 29
    add-int/lit8 v1, p1, 0xa

    .line 30
    .line 31
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 37
    .line 38
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, "\uff1a"

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " \u79d2"

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v3, Lz7/s;

    .line 61
    .line 62
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    const-string v5, "isOpen"

    .line 68
    .line 69
    invoke-virtual {v3, v5, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    .line 71
    .line 72
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v4, "type"

    .line 79
    .line 80
    invoke-virtual {v3, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "name"

    .line 84
    .line 85
    invoke-virtual {v3, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "time"

    .line 93
    .line 94
    invoke-virtual {v3, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 95
    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0, v1, v3, p1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public c(Lx9/w3;IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V
    .locals 6

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-object v2, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "\uff1a"

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v3, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Lz7/s;

    .line 35
    .line 36
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    const-string v5, "isOpen"

    .line 42
    .line 43
    invoke-virtual {v3, v5, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v4, "type"

    .line 53
    .line 54
    invoke-virtual {v3, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 55
    .line 56
    .line 57
    const-string v2, "name"

    .line 58
    .line 59
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "str1"

    .line 63
    .line 64
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p3, "int1"

    .line 74
    .line 75
    invoke-virtual {v3, p3, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "volumeType"

    .line 83
    .line 84
    invoke-virtual {v3, p2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 85
    .line 86
    .line 87
    iget p1, p4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "tdType"

    .line 94
    .line 95
    invoke-virtual {v3, p2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 96
    .line 97
    .line 98
    iget p1, p5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "focusType"

    .line 105
    .line 106
    invoke-virtual {v3, p2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 107
    .line 108
    .line 109
    iget p1, p6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "speakerId"

    .line 116
    .line 117
    invoke-virtual {v3, p2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p2, "volumeGain"

    .line 125
    .line 126
    invoke-virtual {v3, p2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 127
    .line 128
    .line 129
    const/4 p1, -0x1

    .line 130
    invoke-virtual {v0, p1, v3, v1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-object v2, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "\uff1a"

    .line 18
    .line 19
    invoke-static {v1, v3, v4, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Lz7/s;

    .line 24
    .line 25
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    const-string v4, "isOpen"

    .line 31
    .line 32
    invoke-virtual {v1, v4, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    .line 34
    .line 35
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "type"

    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "name"

    .line 47
    .line 48
    invoke-virtual {v1, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "str1"

    .line 52
    .line 53
    invoke-virtual {v1, v2, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p2, "str2"

    .line 57
    .line 58
    invoke-virtual {v1, p2, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p2, -0x1

    .line 62
    invoke-virtual {v0, p2, v1, p1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "settings put "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p4, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lz7/s;

    .line 31
    .line 32
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    const-string v4, "isOpen"

    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 43
    .line 44
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "type"

    .line 51
    .line 52
    invoke-virtual {v2, v4, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "name"

    .line 56
    .line 57
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "type1"

    .line 61
    .line 62
    invoke-virtual {v2, v3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "type2"

    .line 66
    .line 67
    invoke-virtual {v2, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "key"

    .line 71
    .line 72
    invoke-virtual {v2, p1, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p1, "value"

    .line 76
    .line 77
    invoke-virtual {v2, p1, p4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, -0x1

    .line 81
    invoke-virtual {v0, p1, v2, v1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    const-string v2, "isOpen"

    .line 11
    .line 12
    invoke-virtual {p1, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 16
    .line 17
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "type"

    .line 24
    .line 25
    invoke-virtual {p1, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "name"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {v0, v2, p1, v1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    sget p2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object p2, p0, Lua/t0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lua/t0;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "\uff1a"

    .line 18
    .line 19
    invoke-static {v0, v2, v3, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lz7/s;

    .line 24
    .line 25
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    const-string v4, "isOpen"

    .line 31
    .line 32
    invoke-virtual {v2, v4, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    .line 34
    .line 35
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "type"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "name"

    .line 47
    .line 48
    invoke-virtual {v2, v1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "str1"

    .line 52
    .line 53
    invoke-virtual {v2, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    invoke-virtual {p2, p1, v2, v0}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
