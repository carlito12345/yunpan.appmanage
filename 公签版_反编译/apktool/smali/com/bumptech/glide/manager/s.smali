.class public final Lcom/bumptech/glide/manager/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/y6;


# static fields
.field public static volatile e:Lcom/bumptech/glide/manager/s;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/manager/s;->a:I

    iput-object p2, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/bumptech/glide/manager/s;->b:Z

    iput-object p3, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 15
    new-instance v0, Landroidx/emoji2/text/n;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/text/n;-><init>(Landroid/content/Context;I)V

    .line 16
    new-instance v1, La6/i;

    invoke-direct {v1, v0}, La6/i;-><init>(Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/bumptech/glide/manager/m;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/s;)V

    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 19
    new-instance p1, Landroidx/room/i;

    invoke-direct {p1, v1, v0}, Landroidx/room/i;-><init>(La6/i;Lcom/bumptech/glide/manager/m;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lcom/bumptech/glide/manager/r;

    invoke-direct {v2, p1, v1, v0}, Lcom/bumptech/glide/manager/r;-><init>(Landroid/content/Context;La6/i;Lcom/bumptech/glide/manager/m;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/l;Lvb/l;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 11
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 12
    iput-object p3, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/manager/s;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/content/ComponentName;

    .line 12
    .line 13
    const-string v2, "shizuku:user-service-arg-component"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "shizuku:user-service-arg-debuggable"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v1, "shizuku:user-service-arg-version-code"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string v1, "shizuku:user-service-arg-daemon"

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v1, "shizuku:user-service-arg-use-32-bit-app-process"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "process name suffix must not be null"

    .line 47
    .line 48
    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v1, "shizuku:user-service-arg-process-name"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "\nSee "

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 48
    .line 49
    const-string v1, "r8-abstract-class"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/manager/s;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/manager/s;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/s;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bumptech/glide/manager/s;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/s;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/s;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/s;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public c(Lw5/c;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Lw5/c;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_3
    return v0
.end method

.method public d(Lg8/a;Z)Lb8/o;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v4, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v5, p1, Lg8/a;->b:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    if-nez v6, :cond_17

    .line 16
    .line 17
    iget-object p1, p1, Lg8/a;->a:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_16

    .line 24
    .line 25
    const-class v4, Ljava/util/EnumSet;

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    new-instance v4, Lb8/b;

    .line 35
    .line 36
    invoke-direct {v4, v5, v3}, Lb8/b;-><init>(Ljava/lang/reflect/Type;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-class v4, Ljava/util/EnumMap;

    .line 41
    .line 42
    if-ne p1, v4, :cond_1

    .line 43
    .line 44
    new-instance v4, Lb8/b;

    .line 45
    .line 46
    invoke-direct {v4, v5, v2}, Lb8/b;-><init>(Ljava/lang/reflect/Type;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v4, v6

    .line 51
    :goto_0
    if-eqz v4, :cond_2

    .line 52
    .line 53
    return-object v4

    .line 54
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v4}, Lb8/h;->f(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    :goto_1
    move-object v4, v6

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    .line 76
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    sget-object v7, Le8/c;->a:Lif/a;

    .line 78
    .line 79
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    move-object v7, v6

    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception v7

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v9, "Failed making constructor \'"

    .line 88
    .line 89
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Le8/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v9, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    .line 100
    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {v7}, Le8/c;->e(Ljava/lang/Exception;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    :goto_2
    if-eqz v7, :cond_4

    .line 123
    .line 124
    new-instance v4, Lb8/a;

    .line 125
    .line 126
    invoke-direct {v4, v7, v2}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    new-instance v2, La1/d;

    .line 131
    .line 132
    invoke-direct {v2, v1, v4}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    move-object v4, v2

    .line 136
    goto :goto_3

    .line 137
    :catch_1
    nop

    .line 138
    goto :goto_1

    .line 139
    :goto_3
    if-eqz v4, :cond_5

    .line 140
    .line 141
    return-object v4

    .line 142
    :cond_5
    const-class v2, Ljava/util/Collection;

    .line 143
    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    const-class v2, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    new-instance v6, La2/u0;

    .line 159
    .line 160
    const/16 v2, 0xa

    .line 161
    .line 162
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_6

    .line 166
    .line 167
    :cond_6
    const-class v2, Ljava/util/LinkedHashSet;

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    new-instance v6, La2/u0;

    .line 176
    .line 177
    const/16 v2, 0xb

    .line 178
    .line 179
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_6

    .line 183
    .line 184
    :cond_7
    const-class v2, Ljava/util/TreeSet;

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_8

    .line 191
    .line 192
    new-instance v6, La2/u0;

    .line 193
    .line 194
    const/16 v2, 0xc

    .line 195
    .line 196
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_8
    const-class v2, Ljava/util/ArrayDeque;

    .line 202
    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_10

    .line 208
    .line 209
    new-instance v6, La2/u0;

    .line 210
    .line 211
    const/16 v2, 0xd

    .line 212
    .line 213
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :cond_9
    const-class v2, Ljava/util/Map;

    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_10

    .line 225
    .line 226
    const-class v2, Lb8/n;

    .line 227
    .line 228
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_c

    .line 233
    .line 234
    instance-of v2, v5, Ljava/lang/reflect/ParameterizedType;

    .line 235
    .line 236
    if-nez v2, :cond_a

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_a
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 240
    .line 241
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    array-length v4, v2

    .line 246
    if-nez v4, :cond_b

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_b
    aget-object v2, v2, v3

    .line 250
    .line 251
    invoke-static {v2}, Lb8/h;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const-class v4, Ljava/lang/String;

    .line 256
    .line 257
    if-ne v2, v4, :cond_c

    .line 258
    .line 259
    :goto_4
    new-instance v6, La2/u0;

    .line 260
    .line 261
    const/4 v2, 0x5

    .line 262
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_c
    :goto_5
    const-class v2, Ljava/util/LinkedHashMap;

    .line 267
    .line 268
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_d

    .line 273
    .line 274
    new-instance v6, La2/u0;

    .line 275
    .line 276
    const/4 v2, 0x6

    .line 277
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_d
    const-class v2, Ljava/util/TreeMap;

    .line 282
    .line 283
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_e

    .line 288
    .line 289
    new-instance v6, La2/u0;

    .line 290
    .line 291
    const/4 v2, 0x7

    .line 292
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_e
    const-class v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 297
    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    new-instance v6, La2/u0;

    .line 305
    .line 306
    const/16 v2, 0x8

    .line 307
    .line 308
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_f
    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 313
    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_10

    .line 319
    .line 320
    new-instance v6, La2/u0;

    .line 321
    .line 322
    const/16 v2, 0x9

    .line 323
    .line 324
    invoke-direct {v6, v2}, La2/u0;-><init>(I)V

    .line 325
    .line 326
    .line 327
    :cond_10
    :goto_6
    if-eqz v6, :cond_11

    .line 328
    .line 329
    return-object v6

    .line 330
    :cond_11
    invoke-static {p1}, Lcom/bumptech/glide/manager/s;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    if-eqz v2, :cond_12

    .line 335
    .line 336
    new-instance p1, Lb8/a;

    .line 337
    .line 338
    invoke-direct {p1, v2, v3}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    return-object p1

    .line 342
    :cond_12
    const-string v2, "Unable to create instance of "

    .line 343
    .line 344
    if-nez p2, :cond_13

    .line 345
    .line 346
    const-string p2, "; Register an InstanceCreator or a TypeAdapter for this type."

    .line 347
    .line 348
    invoke-static {v2, p1, p2}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    new-instance p2, Lb8/a;

    .line 353
    .line 354
    invoke-direct {p2, p1, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    return-object p2

    .line 358
    :cond_13
    iget-boolean p2, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 359
    .line 360
    if-eqz p2, :cond_14

    .line 361
    .line 362
    new-instance p2, La1/d;

    .line 363
    .line 364
    invoke-direct {p2, v0, p1}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_14
    const-string p2, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    .line 369
    .line 370
    invoke-static {v2, p1, p2}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    array-length p1, p1

    .line 379
    if-nez p1, :cond_15

    .line 380
    .line 381
    const-string p1, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    .line 382
    .line 383
    invoke-static {p2, p1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    :cond_15
    new-instance p1, Lb8/a;

    .line 388
    .line 389
    invoke-direct {p1, p2, v0}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    move-object p2, p1

    .line 393
    :goto_7
    return-object p2

    .line 394
    :cond_16
    new-instance p1, Ljava/lang/ClassCastException;

    .line 395
    .line 396
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 397
    .line 398
    .line 399
    throw p1

    .line 400
    :cond_17
    new-instance p1, Ljava/lang/ClassCastException;

    .line 401
    .line 402
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 403
    .line 404
    .line 405
    goto :goto_9

    .line 406
    :goto_8
    throw p1

    .line 407
    :goto_9
    goto :goto_8
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {v0}, La6/q;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lw5/c;

    .line 24
    .line 25
    invoke-interface {v1}, Lw5/c;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Lw5/c;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Lw5/c;->clear()V

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Lw5/c;->h()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 11

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Ljava/io/File;

    .line 6
    .line 7
    const-string v0, ".json"

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 10
    .line 11
    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    .line 12
    .line 13
    const-string v3, "\u6210\u529f\uff1a\u4fdd\u5b58\u5728\u3010Download\u3011\u76ee\u5f55\u4e0b"

    .line 14
    .line 15
    const-string v4, "/"

    .line 16
    .line 17
    iget-object v5, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-direct {v1, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, v5, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 34
    .line 35
    invoke-static {v1, v5}, Lq4/a;->N(Ljava/io/File;Lz7/s;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v6}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_0
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_1
    iget-object v1, v5, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 80
    .line 81
    invoke-virtual {v1}, Lz7/s;->n()Lz7/s;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v5, "keys"

    .line 86
    .line 87
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const/4 v7, 0x0

    .line 92
    :goto_0
    iget-object v8, v5, Lz7/o;->a:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-ge v7, v8, :cond_2

    .line 99
    .line 100
    invoke-virtual {v5, v7}, Lz7/o;->l(I)Lz7/p;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    new-instance v9, Lz7/o;

    .line 109
    .line 110
    invoke-direct {v9}, Lz7/o;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v10, "click"

    .line 114
    .line 115
    invoke-virtual {v8, v10, v9}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v7}, Lz7/o;->l(I)Lz7/p;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    new-instance v9, Lz7/o;

    .line 127
    .line 128
    invoke-direct {v9}, Lz7/o;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v10, "doubleClick"

    .line 132
    .line 133
    invoke-virtual {v8, v10, v9}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v7}, Lz7/o;->l(I)Lz7/p;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    new-instance v9, Lz7/o;

    .line 145
    .line 146
    invoke-direct {v9}, Lz7/o;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v10, "longClick"

    .line 150
    .line 151
    invoke-virtual {v8, v10, v9}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v7}, Lz7/o;->l(I)Lz7/p;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    new-instance v9, Lz7/o;

    .line 163
    .line 164
    invoke-direct {v9}, Lz7/o;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v10, "zhClick"

    .line 168
    .line 169
    invoke-virtual {v8, v10, v9}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v7, v7, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_2
    new-instance v5, Ljava/io/File;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-direct {v5, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lz7/p;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v5, v1}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_3

    .line 193
    .line 194
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v3, v6}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_3
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "{numRequests="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", isPaused="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "}"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
