.class public abstract Lcom/desay_svautomotive/p023a/InterfaceC0528d$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/p023a/InterfaceC0528d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/p023a/InterfaceC0528d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/p023a/InterfaceC0528d$a$C0863a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m249a(Landroid/os/IBinder;)Lcom/desay_svautomotive/p023a/InterfaceC0528d;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.desay_svautomotive.libsvcarinfo.ICarInfo"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    instance-of v1, v0, Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast v0, Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    new-instance v0, Lcom/desay_svautomotive/p023a/InterfaceC0528d$a$C0863a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/p023a/InterfaceC0528d$a$C0863a;-><init>(Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.desay_svautomotive.libsvcarinfo.ICarInfo"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-eq p1, v2, :cond_5

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo247a(I[I)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p0, p1, p3, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo244a(II[I)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo248a(II)[I

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2}, Lcom/desay_svautomotive/p023a/InterfaceC0529e$a;->m250a(Landroid/os/IBinder;)Lcom/desay_svautomotive/p023a/InterfaceC0529e;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p0, p1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo245a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;)V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-static {p3}, Lcom/desay_svautomotive/p023a/InterfaceC0529e$a;->m250a(Landroid/os/IBinder;)Lcom/desay_svautomotive/p023a/InterfaceC0529e;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p0, p1, p3, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d;->mo246a(ILcom/desay_svautomotive/p023a/InterfaceC0529e;[I)V

    .line 127
    .line 128
    .line 129
    return v2
.end method
