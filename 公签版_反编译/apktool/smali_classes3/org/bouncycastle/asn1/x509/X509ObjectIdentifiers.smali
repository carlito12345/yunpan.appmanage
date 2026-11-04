.class public interface abstract Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final attributeType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final commonName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final countryName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final crlAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_PasswordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_caIssuers:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg_noSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_organizationIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pda:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final localityName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ocspAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organization:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organizationalUnitName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkix_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final stateOrProvinceName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "2.5.4"

    .line 2
    .line 3
    invoke-static {v0}, Ll2/z;->x(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->attributeType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    const-string v1, "3"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    .line 21
    const-string v1, "6"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    const-string v2, "7"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    const-string v2, "8"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    const-string v2, "10"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .line 69
    const-string v2, "11"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    .line 81
    const-string v2, "20"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    const-string v2, "41"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    .line 105
    const-string v2, "97"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_organizationIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    .line 117
    const-string v0, "1.3.14.3.2.26"

    .line 118
    .line 119
    invoke-static {v0}, Ll2/z;->x(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    .line 125
    const-string v0, "1.3.36.3.2.1"

    .line 126
    .line 127
    invoke-static {v0}, Ll2/z;->x(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    .line 133
    const-string v0, "1.3.36.3.3.1.2"

    .line 134
    .line 135
    invoke-static {v0}, Ll2/z;->x(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    .line 141
    const-string v0, "2.5.8.1.1"

    .line 142
    .line 143
    invoke-static {v0}, Ll2/z;->x(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    .line 149
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 150
    .line 151
    const-string v2, "1.3.6.1.5.5.7"

    .line 152
    .line 153
    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    .line 158
    const-string v2, "1"

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    sput-object v3, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->pkix_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 171
    .line 172
    const-string v3, "30"

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    sput-object v3, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    .line 180
    const-string v3, "31"

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    sput-object v3, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    .line 188
    const-string v3, "32"

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    sput-object v3, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    .line 196
    const-string v3, "33"

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    sput-object v3, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 203
    .line 204
    const-string v3, "2"

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_alg_noSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 211
    .line 212
    const-string v1, "9"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pda:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 219
    .line 220
    const-string v1, "48"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 227
    .line 228
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 247
    .line 248
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    .line 250
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 251
    .line 252
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 253
    .line 254
    const-string v1, "2.5.29"

    .line 255
    .line 256
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 260
    .line 261
    sget-object v0, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 262
    .line 263
    const-string v1, "66.13"

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_PasswordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 270
    .line 271
    return-void
.end method
