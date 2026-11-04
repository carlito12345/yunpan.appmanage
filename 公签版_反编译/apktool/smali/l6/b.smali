.class public final Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Ll6/d;


# direct methods
.method public constructor <init>(Ll6/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll6/b;->a:Ll6/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "service="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll6/b;->a:Ll6/d;

    .line 9
    .line 10
    iget-object v1, v1, Ll6/d;->c:Ll6/g;

    .line 11
    .line 12
    iget-object v1, v1, Ll6/g;->g:Ll6/h;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 29
    .line 30
    iget-object v1, v0, Ll6/d;->e:Lj6/c;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v1, Lj6/a;

    .line 35
    .line 36
    iget-object v1, v1, Lj6/a;->e:Landroid/os/IBinder;

    .line 37
    .line 38
    iget-object v0, v0, Ll6/d;->f:Ll6/b;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, v0, Ll6/d;->e:Lj6/c;

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "service="

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Ll6/d;->c:Ll6/g;

    .line 59
    .line 60
    iget-object v2, v2, Ll6/g;->g:Ll6/h;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Ll6/d;->l:Ljava/util/ArrayList;

    .line 77
    .line 78
    monitor-enter v1

    .line 79
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v3, v0, Ll6/d;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Li6/a;

    .line 102
    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    :try_start_1
    iget-object v3, v0, Ll6/d;->c:Ll6/g;

    .line 106
    .line 107
    iget-object v3, v3, Ll6/g;->g:Ll6/h;

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Li6/a;->d(Ll6/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 119
    .line 120
    iget-object v1, v0, Ll6/d;->c:Ll6/g;

    .line 121
    .line 122
    iget-boolean v1, v1, Ll6/g;->b:Z

    .line 123
    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    iget-boolean v0, v0, Ll6/d;->i:Z

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    const-string v0, "keep bind service"

    .line 131
    .line 132
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 136
    .line 137
    invoke-virtual {v0}, Ll6/d;->e()V

    .line 138
    .line 139
    .line 140
    :cond_3
    return-void

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v1, "system service! name="

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Ll6/b;->a:Ll6/d;

    .line 149
    .line 150
    iget-object v1, v1, Ll6/d;->c:Ll6/g;

    .line 151
    .line 152
    iget-object v1, v1, Ll6/g;->g:Ll6/h;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Ll6/b;->a:Ll6/d;

    .line 169
    .line 170
    invoke-virtual {v0}, Ll6/d;->e()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    goto :goto_2

    .line 177
    :goto_1
    throw v0

    .line 178
    :goto_2
    goto :goto_1
.end method
