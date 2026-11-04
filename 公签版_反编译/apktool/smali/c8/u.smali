.class public final Lc8/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/reflect/Method;

.field public final synthetic f:Lz7/a0;

.field public final synthetic g:Lz7/a0;

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lz7/a0;Lz7/a0;ZZ)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lc8/u;->d:Z

    .line 2
    .line 3
    iput-object p4, p0, Lc8/u;->e:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iput-object p5, p0, Lc8/u;->f:Lz7/a0;

    .line 6
    .line 7
    iput-object p6, p0, Lc8/u;->g:Lz7/a0;

    .line 8
    .line 9
    iput-boolean p7, p0, Lc8/u;->h:Z

    .line 10
    .line 11
    iput-boolean p8, p0, Lc8/u;->i:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lc8/u;->a:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lc8/u;->b:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lc8/u;->c:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lh8/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc8/u;->b:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    iget-boolean v1, p0, Lc8/u;->d:Z

    .line 4
    .line 5
    iget-object v2, p0, Lc8/u;->e:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static {p2, v0}, Lc8/z;->b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2, v2}, Lc8/z;->b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-static {v2, p2}, Le8/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Lz7/q;

    .line 33
    .line 34
    const-string v1, "Accessor "

    .line 35
    .line 36
    const-string v2, " threw exception"

    .line 37
    .line 38
    invoke-static {v1, p2, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p2, p1}, Lz7/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    if-ne v0, p2, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object p2, p0, Lc8/u;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lh8/b;->N(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lc8/u;->f:Lz7/a0;

    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Lz7/a0;->c(Lh8/b;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
