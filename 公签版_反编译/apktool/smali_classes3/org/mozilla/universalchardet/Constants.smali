.class public final Lorg/mozilla/universalchardet/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARSET_BIG5:Ljava/lang/String;

.field public static final CHARSET_EUC_JP:Ljava/lang/String;

.field public static final CHARSET_EUC_KR:Ljava/lang/String;

.field public static final CHARSET_EUC_TW:Ljava/lang/String;

.field public static final CHARSET_GB18030:Ljava/lang/String;

.field public static final CHARSET_GBK:Ljava/lang/String;

.field public static final CHARSET_HZ_GB_2312:Ljava/lang/String;

.field public static final CHARSET_IBM855:Ljava/lang/String;

.field public static final CHARSET_IBM866:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_CN:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_JP:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_KR:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_5:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_7:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_8:Ljava/lang/String;

.field public static final CHARSET_KOI8_R:Ljava/lang/String;

.field public static final CHARSET_MACCYRILLIC:Ljava/lang/String;

.field public static final CHARSET_SHIFT_JIS:Ljava/lang/String;

.field public static final CHARSET_TIS620:Ljava/lang/String;

.field public static final CHARSET_US_ASCCI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARSET_US_ASCII:Ljava/lang/String;

.field public static final CHARSET_UTF_16BE:Ljava/lang/String;

.field public static final CHARSET_UTF_16LE:Ljava/lang/String;

.field public static final CHARSET_UTF_32BE:Ljava/lang/String;

.field public static final CHARSET_UTF_32LE:Ljava/lang/String;

.field public static final CHARSET_UTF_8:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1251:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1252:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1253:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1255:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ISO-2022-JP"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_JP:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "ISO-2022-CN"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_CN:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ISO-2022-KR"

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_KR:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "ISO-8859-5"

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_5:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "ISO-8859-7"

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_7:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "ISO-8859-8"

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "BIG5"

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_BIG5:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "GB18030"

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_GB18030:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "EUC-JP"

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_JP:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "EUC-KR"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_KR:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "EUC-TW"

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_TW:Ljava/lang/String;

    .line 88
    .line 89
    const-string v0, "SHIFT_JIS"

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_SHIFT_JIS:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "IBM855"

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM855:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "IBM866"

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM866:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "KOI8-R"

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_KOI8_R:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "MACCYRILLIC"

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_MACCYRILLIC:Ljava/lang/String;

    .line 128
    .line 129
    const-string v0, "WINDOWS-1251"

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1251:Ljava/lang/String;

    .line 136
    .line 137
    const-string v0, "WINDOWS-1252"

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "WINDOWS-1253"

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1253:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "WINDOWS-1255"

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "UTF-8"

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, "UTF-16BE"

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    .line 176
    .line 177
    const-string v0, "UTF-16LE"

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    .line 184
    .line 185
    const-string v0, "UTF-32BE"

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    .line 192
    .line 193
    const-string v0, "UTF-32LE"

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    .line 200
    .line 201
    const-string v0, "TIS620"

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_TIS620:Ljava/lang/String;

    .line 208
    .line 209
    const-string v0, "US-ASCII"

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    sput-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_US_ASCCI:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_US_ASCII:Ljava/lang/String;

    .line 222
    .line 223
    const-string v0, "GBK"

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_GBK:Ljava/lang/String;

    .line 230
    .line 231
    const-string v0, "HZ-GB-2312"

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_HZ_GB_2312:Ljava/lang/String;

    .line 238
    .line 239
    const-string v0, "X-ISO-10646-UCS-4-3412"

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    .line 246
    .line 247
    const-string v0, "X-ISO-10646-UCS-4-2143"

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    .line 254
    .line 255
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
