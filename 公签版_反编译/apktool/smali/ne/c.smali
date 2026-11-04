.class public abstract Lne/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lne/b;

.field public static b:Lne/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lne/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lne/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lne/c;->a:Lne/b;

    .line 8
    .line 9
    return-void
.end method
