.class public final synthetic Ljg/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic a:Ljg/z;


# direct methods
.method public synthetic constructor <init>(Ljg/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/x;->a:Ljg/z;

    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Ljg/x;->a:Ljg/z;

    .line 2
    .line 3
    iget-object v0, v0, Ljg/z;->i:[Lyg/b;

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-wide v0, p1, Lyg/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p1

    .line 11
    return-wide v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method
