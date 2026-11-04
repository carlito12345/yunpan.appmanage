.class public final Lmc/d;
.super Lec/b;
.source "SourceFile"

# interfaces
.implements Lkc/b;


# static fields
.field public static final a:Lmc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmc/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lmc/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmc/d;->a:Lmc/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c(Lec/e;)V
    .locals 1

    .line 1
    sget-object v0, Lic/b;->a:Lic/b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lec/e;->onComplete()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
