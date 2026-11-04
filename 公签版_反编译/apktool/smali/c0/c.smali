.class public final Lc0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lc0/c;


# instance fields
.field public final a:Ly7/b;

.field public final b:La2/y0;

.field public c:Lc0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc0/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lc0/c;-><init>(Ly7/b;La2/y0;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc0/c;->d:Lc0/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ly7/b;La2/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/c;->a:Ly7/b;

    .line 5
    .line 6
    iput-object p2, p0, Lc0/c;->b:La2/y0;

    .line 7
    .line 8
    return-void
.end method
