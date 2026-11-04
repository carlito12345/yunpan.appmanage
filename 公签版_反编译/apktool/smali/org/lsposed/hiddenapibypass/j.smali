.class public abstract Lorg/lsposed/hiddenapibypass/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, Lorg/lsposed/hiddenapibypass/h;

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-string v2, "getUnsafe"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lsun/misc/Unsafe;

    .line 17
    .line 18
    sput-object v1, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    new-instance v2, Lorg/lsposed/hiddenapibypass/b;

    .line 21
    .line 22
    invoke-direct {v2}, Lorg/lsposed/hiddenapibypass/b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->a()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Lorg/lsposed/hiddenapibypass/b;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->e()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v2, v5}, Lorg/lsposed/hiddenapibypass/b;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-class v6, Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v2, v6}, Lorg/lsposed/hiddenapibypass/b;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v6, "artMethod"

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    sput-wide v6, Lorg/lsposed/hiddenapibypass/j;->b:J

    .line 70
    .line 71
    const-string v6, "declaringClass"

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 78
    .line 79
    .line 80
    const-string v4, "artFieldOrMethod"

    .line 81
    .line 82
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    sput-wide v4, Lorg/lsposed/hiddenapibypass/j;->c:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :try_start_1
    const-string v4, "fields"

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :catch_1
    :try_start_2
    sget-object v1, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 107
    .line 108
    const-string v4, "iFields"

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    const-string v6, "sFields"

    .line 119
    .line 120
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 125
    .line 126
    .line 127
    :goto_0
    sget-object v1, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 128
    .line 129
    const-string v6, "methods"

    .line 130
    .line 131
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    sput-wide v6, Lorg/lsposed/hiddenapibypass/j;->d:J

    .line 140
    .line 141
    const-string v2, "a"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v8, "b"

    .line 148
    .line 149
    invoke-virtual {v0, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const/4 v8, 0x1

    .line 154
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->d()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-static {v9, v2}, Lorg/lsposed/hiddenapibypass/a;->c(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->d()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-static {v9, v3}, Lorg/lsposed/hiddenapibypass/a;->c(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    sget-wide v9, Lorg/lsposed/hiddenapibypass/j;->c:J

    .line 177
    .line 178
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 187
    .line 188
    .line 189
    move-result-wide v6

    .line 190
    sub-long/2addr v2, v11

    .line 191
    sput-wide v2, Lorg/lsposed/hiddenapibypass/j;->e:J

    .line 192
    .line 193
    sub-long/2addr v11, v6

    .line 194
    sub-long/2addr v11, v2

    .line 195
    sput-wide v11, Lorg/lsposed/hiddenapibypass/j;->f:J

    .line 196
    .line 197
    const-string v2, "i"

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v3, "j"

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->d()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v6, v2}, Lorg/lsposed/hiddenapibypass/a;->b(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {}, Lorg/lsposed/hiddenapibypass/a;->d()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-static {v6, v3}, Lorg/lsposed/hiddenapibypass/a;->b(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :goto_1
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 242
    .line 243
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    throw v1
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "this object is not an instance of the given class"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    const-class v5, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v5, v4, v2

    .line 29
    .line 30
    const-class v5, Lorg/lsposed/hiddenapibypass/f;

    .line 31
    .line 32
    const-string v6, "invoke"

    .line 33
    .line 34
    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v5, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 42
    .line 43
    sget-wide v6, Lorg/lsposed/hiddenapibypass/j;->d:J

    .line 44
    .line 45
    move-object/from16 v8, p0

    .line 46
    .line 47
    invoke-virtual {v5, v8, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    const-string v15, "Cannot find matching method"

    .line 54
    .line 55
    cmp-long v8, v13, v6

    .line 56
    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    invoke-virtual {v5, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    :goto_1
    if-ge v2, v5, :cond_3

    .line 64
    .line 65
    int-to-long v6, v2

    .line 66
    sget-wide v8, Lorg/lsposed/hiddenapibypass/j;->e:J

    .line 67
    .line 68
    mul-long v6, v6, v8

    .line 69
    .line 70
    add-long/2addr v6, v13

    .line 71
    sget-wide v8, Lorg/lsposed/hiddenapibypass/j;->f:J

    .line 72
    .line 73
    add-long v11, v6, v8

    .line 74
    .line 75
    sget-object v7, Lorg/lsposed/hiddenapibypass/j;->a:Lsun/misc/Unsafe;

    .line 76
    .line 77
    sget-wide v9, Lorg/lsposed/hiddenapibypass/j;->b:J

    .line 78
    .line 79
    move-object v8, v4

    .line 80
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    move-object/from16 v7, p2

    .line 88
    .line 89
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6, v1}, Lorg/lsposed/hiddenapibypass/i;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_2

    .line 104
    .line 105
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    :cond_2
    add-int/2addr v2, v3

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 113
    .line 114
    invoke-direct {v0, v15}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 119
    .line 120
    invoke-direct {v0, v15}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    throw v0

    .line 125
    :goto_3
    goto :goto_2
.end method

.method public static varargs b([Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Ldalvik/system/VMRuntime;

    .line 4
    .line 5
    :try_start_0
    const-string v3, "getRuntime"

    .line 6
    .line 7
    new-array v4, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static {v2, v5, v3, v4}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "setHiddenApiExemptions"

    .line 15
    .line 16
    new-array v5, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p0, v5, v1

    .line 19
    .line 20
    invoke-static {v2, v3, v4, v5}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catch_0
    return v1
.end method
