.class public final Ll6/a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lj6/d;


# instance fields
.field public final synthetic e:Ll6/d;


# direct methods
.method public constructor <init>(Ll6/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll6/a;->e:Ll6/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.desaysv.ivi.vdb.IVDBusCallback"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final h(Lm6/a;)V
    .locals 5

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
    iget-object v1, p0, Ll6/a;->e:Ll6/d;

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
    const-string v1, "; event="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p1, Lm6/a;->a:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lm6/a;->b:Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const-class v1, Lm6/a;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Ll6/a;->e:Ll6/d;

    .line 52
    .line 53
    iget-object v0, v0, Ll6/d;->p:Ljava/util/ArrayList;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Ll6/a;->e:Ll6/d;

    .line 57
    .line 58
    iget-object v1, v1, Ll6/d;->p:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lm6/a;

    .line 77
    .line 78
    iget v3, p1, Lm6/a;->a:I

    .line 79
    .line 80
    iget v4, v2, Lm6/a;->a:I

    .line 81
    .line 82
    if-ne v3, v4, :cond_1

    .line 83
    .line 84
    iget v1, v2, Lm6/a;->c:I

    .line 85
    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x2

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    if-ne v1, v0, :cond_4

    .line 91
    .line 92
    :cond_3
    iget-object v2, p0, Ll6/a;->e:Ll6/d;

    .line 93
    .line 94
    iget-object v2, v2, Ll6/d;->t:Lcom/yunpan/appmanage/carsdk/u;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/16 v3, 0x7d0

    .line 101
    .line 102
    iput v3, v2, Landroid/os/Message;->what:I

    .line 103
    .line 104
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    iget-object p1, p0, Ll6/a;->e:Ll6/d;

    .line 107
    .line 108
    iget-object p1, p1, Ll6/d;->t:Lcom/yunpan/appmanage/carsdk/u;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    const/4 p1, 0x1

    .line 114
    if-eq v1, p1, :cond_5

    .line 115
    .line 116
    if-eq v1, v0, :cond_5

    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    iget-object p1, p0, Ll6/a;->e:Ll6/d;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    throw p1

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_2

    .line 129
    :goto_1
    throw p1

    .line 130
    :goto_2
    goto :goto_1
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_3

    .line 4
    .line 5
    const-string p1, "com.desaysv.ivi.vdb.IVDBusCallback"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lm6/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lm6/a;

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p2, "service="

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Ll6/a;->e:Ll6/d;

    .line 33
    .line 34
    iget-object p2, p2, Ll6/d;->c:Ll6/g;

    .line 35
    .line 36
    iget-object p2, p2, Ll6/g;->g:Ll6/h;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, "; event="

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p2, v0, Lm6/a;->a:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lm6/a;->b:Landroid/os/Bundle;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const-class p2, Lm6/a;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p1, p0, Ll6/a;->e:Ll6/d;

    .line 76
    .line 77
    iget-object v2, p1, Ll6/d;->k:Ljava/util/ArrayList;

    .line 78
    .line 79
    monitor-enter v2

    .line 80
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    iget-object p2, p0, Ll6/a;->e:Ll6/d;

    .line 83
    .line 84
    iget-object p2, p2, Ll6/d;->k:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Lg/b;->t(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p1

    .line 115
    :cond_3
    const/4 v2, 0x2

    .line 116
    if-ne p1, v2, :cond_5

    .line 117
    .line 118
    const-string p1, "com.desaysv.ivi.vdb.IVDBusCallback"

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    sget-object p1, Lm6/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    .line 131
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    move-object v0, p1

    .line 136
    check-cast v0, Lm6/a;

    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0, v0}, Ll6/a;->h(Lm6/a;)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :cond_5
    const v0, 0x5f4e5446

    .line 143
    .line 144
    .line 145
    if-ne p1, v0, :cond_6

    .line 146
    .line 147
    const-string p1, "com.desaysv.ivi.vdb.IVDBusCallback"

    .line 148
    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v1

    .line 153
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1
.end method
