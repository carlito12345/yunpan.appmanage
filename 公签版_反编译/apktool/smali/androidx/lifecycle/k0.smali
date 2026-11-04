.class public final Landroidx/lifecycle/k0;
.super Lue/e;
.source "SourceFile"

# interfaces
.implements Lte/l;


# static fields
.field public static final a:Landroidx/lifecycle/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/k0;

    invoke-direct {v0}, Landroidx/lifecycle/k0;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->a:Landroidx/lifecycle/k0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lue/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lp1/b;

    .line 2
    .line 3
    const-string v0, "$this$initializer"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/o0;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/lifecycle/o0;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method
