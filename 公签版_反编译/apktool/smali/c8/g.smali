.class public abstract Lc8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc8/f;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc8/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lc8/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc8/g;->b:Lc8/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc8/g;->a:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/Date;)Ljava/util/Date;
.end method
