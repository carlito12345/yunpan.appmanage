.class public final synthetic Lua/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/xe;
.implements Lha/cf;
.implements Lha/af;
.implements Lha/i6;
.implements Lha/ic;
.implements Lha/oc;
.implements Lha/re;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/h3;

.field public final synthetic c:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(Lha/h3;Lx9/n5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/h9;->a:I

    iput-object p1, p0, Lua/h9;->b:Lha/h3;

    iput-object p2, p0, Lua/h9;->c:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Lua/h9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 12
    .line 13
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lua/i9;

    .line 16
    .line 17
    iget v2, v0, Lua/i9;->T:I

    .line 18
    .line 19
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 25
    .line 26
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 27
    .line 28
    iget-object v4, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, v3, Lx9/n5;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v2, v4, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 49
    .line 50
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lua/i9;

    .line 53
    .line 54
    iget v2, v0, Lua/i9;->T:I

    .line 55
    .line 56
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 62
    .line 63
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 64
    .line 65
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, ""

    .line 68
    .line 69
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 86
    .line 87
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lua/i9;

    .line 90
    .line 91
    iget v2, v0, Lua/i9;->T:I

    .line 92
    .line 93
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 99
    .line 100
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 101
    .line 102
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 103
    .line 104
    const-string v4, "/"

    .line 105
    .line 106
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_2
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 123
    .line 124
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lua/i9;

    .line 127
    .line 128
    iget v2, v0, Lua/i9;->T:I

    .line 129
    .line 130
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 131
    .line 132
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 136
    .line 137
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 138
    .line 139
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 140
    .line 141
    const-string v4, "/"

    .line 142
    .line 143
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 6

    .line 1
    iget v0, p0, Lua/h9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 12
    .line 13
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lua/i9;

    .line 16
    .line 17
    iget v2, v0, Lua/i9;->T:I

    .line 18
    .line 19
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 25
    .line 26
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 27
    .line 28
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 49
    .line 50
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lua/i9;

    .line 53
    .line 54
    iget v2, v0, Lua/i9;->T:I

    .line 55
    .line 56
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 62
    .line 63
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 64
    .line 65
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "0"

    .line 68
    .line 69
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lua/h9;->b:Lha/h3;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 86
    .line 87
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lua/i9;

    .line 90
    .line 91
    iget v2, v0, Lua/i9;->T:I

    .line 92
    .line 93
    iget-object v3, p0, Lua/h9;->c:Lx9/n5;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 99
    .line 100
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 101
    .line 102
    iget-object v4, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 103
    .line 104
    iget v3, v3, Lx9/n5;->a:I

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    if-ne v3, v5, :cond_0

    .line 108
    .line 109
    const-string v3, "-1"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const-string v3, "0"

    .line 113
    .line 114
    :goto_0
    invoke-direct {v2, v4, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
