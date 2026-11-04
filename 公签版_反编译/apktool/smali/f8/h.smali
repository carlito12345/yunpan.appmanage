.class public abstract Lf8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Lf8/g;

.field public static final c:Lf8/g;

.field public static final d:Lf8/a;

.field public static final e:Lf8/c;

.field public static final f:Lf8/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "java.sql.Date"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    sput-boolean v2, Lf8/h;->a:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lf8/g;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lf8/g;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lf8/h;->b:Lf8/g;

    .line 22
    .line 23
    new-instance v0, Lf8/g;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lf8/g;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lf8/h;->c:Lf8/g;

    .line 29
    .line 30
    sget-object v0, Lf8/b;->b:Lf8/a;

    .line 31
    .line 32
    sput-object v0, Lf8/h;->d:Lf8/a;

    .line 33
    .line 34
    sget-object v0, Lf8/d;->b:Lf8/c;

    .line 35
    .line 36
    sput-object v0, Lf8/h;->e:Lf8/c;

    .line 37
    .line 38
    sget-object v0, Lf8/f;->b:Lf8/e;

    .line 39
    .line 40
    sput-object v0, Lf8/h;->f:Lf8/e;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lf8/h;->b:Lf8/g;

    .line 45
    .line 46
    sput-object v0, Lf8/h;->c:Lf8/g;

    .line 47
    .line 48
    sput-object v0, Lf8/h;->d:Lf8/a;

    .line 49
    .line 50
    sput-object v0, Lf8/h;->e:Lf8/c;

    .line 51
    .line 52
    sput-object v0, Lf8/h;->f:Lf8/e;

    .line 53
    .line 54
    :goto_1
    return-void
.end method
