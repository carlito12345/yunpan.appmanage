package org.bouncycastle.pqc.crypto.falcon;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import l2.z;
import okhttp3.internal.http.StatusLine;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class FalconKeyGen {
    private static final int DEPTH_INT_FG = 4;
    private static final short[] REV10 = {0, 512, 256, 768, 128, 640, 384, 896, 64, 576, 320, 832, 192, 704, 448, 960, 32, 544, 288, 800, 160, 672, 416, 928, 96, 608, 352, 864, 224, 736, 480, 992, 16, 528, 272, 784, 144, 656, 400, 912, 80, 592, 336, 848, 208, 720, 464, 976, 48, 560, 304, 816, 176, 688, 432, 944, 112, 624, 368, 880, 240, 752, 496, 1008, 8, 520, 264, 776, 136, 648, 392, 904, 72, 584, 328, 840, 200, 712, 456, 968, 40, 552, 296, 808, 168, 680, 424, 936, 104, 616, 360, 872, 232, 744, 488, 1000, 24, 536, 280, 792, 152, 664, 408, 920, 88, 600, 344, 856, 216, 728, 472, 984, 56, 568, 312, 824, 184, 696, 440, 952, 120, 632, 376, 888, 248, 760, 504, 1016, 4, 516, 260, 772, 132, 644, 388, 900, 68, 580, 324, 836, 196, 708, 452, 964, 36, 548, 292, 804, 164, 676, 420, 932, 100, 612, 356, 868, 228, 740, 484, 996, 20, 532, 276, 788, 148, 660, 404, 916, 84, 596, 340, 852, 212, 724, 468, 980, 52, 564, 308, 820, 180, 692, 436, 948, 116, 628, 372, 884, 244, 756, 500, 1012, 12, 524, 268, 780, 140, 652, 396, 908, 76, 588, 332, 844, 204, 716, 460, 972, 44, 556, 300, 812, 172, 684, 428, 940, 108, 620, 364, 876, 236, 748, 492, 1004, 28, 540, 284, 796, 156, 668, 412, 924, 92, 604, 348, 860, 220, 732, 476, 988, 60, 572, 316, 828, 188, 700, 444, 956, 124, 636, 380, 892, 252, 764, 508, 1020, 2, 514, 258, 770, 130, 642, 386, 898, 66, 578, 322, 834, 194, 706, 450, 962, 34, 546, 290, 802, 162, 674, 418, 930, 98, 610, 354, 866, 226, 738, 482, 994, 18, 530, 274, 786, 146, 658, 402, 914, 82, 594, 338, 850, 210, 722, 466, 978, 50, 562, 306, 818, 178, 690, 434, 946, 114, 626, 370, 882, 242, 754, 498, 1010, 10, 522, 266, 778, 138, 650, 394, 906, 74, 586, 330, 842, 202, 714, 458, 970, 42, 554, 298, 810, 170, 682, 426, 938, 106, 618, 362, 874, 234, 746, 490, 1002, 26, 538, 282, 794, 154, 666, 410, 922, 90, 602, 346, 858, 218, 730, 474, 986, 58, 570, 314, 826, 186, 698, 442, 954, 122, 634, 378, 890, 250, 762, 506, 1018, 6, 518, 262, 774, 134, 646, 390, 902, 70, 582, 326, 838, 198, 710, 454, 966, 38, 550, 294, 806, 166, 678, 422, 934, 102, 614, 358, 870, 230, 742, 486, 998, 22, 534, 278, 790, 150, 662, 406, 918, 86, 598, 342, 854, 214, 726, 470, 982, 54, 566, 310, 822, 182, 694, 438, 950, 118, 630, 374, 886, 246, 758, 502, 1014, 14, 526, 270, 782, 142, 654, 398, 910, 78, 590, 334, 846, 206, 718, 462, 974, 46, 558, 302, 814, 174, 686, 430, 942, 110, 622, 366, 878, 238, 750, 494, 1006, 30, 542, 286, 798, 158, 670, 414, 926, 94, 606, 350, 862, 222, 734, 478, 990, 62, 574, 318, 830, 190, 702, 446, 958, 126, 638, 382, 894, 254, 766, 510, 1022, 1, 513, 257, 769, 129, 641, 385, 897, 65, 577, 321, 833, 193, 705, 449, 961, 33, 545, 289, 801, 161, 673, 417, 929, 97, 609, 353, 865, 225, 737, 481, 993, 17, 529, 273, 785, 145, 657, 401, 913, 81, 593, 337, 849, 209, 721, 465, 977, 49, 561, 305, 817, 177, 689, 433, 945, 113, 625, 369, 881, 241, 753, 497, 1009, 9, 521, 265, 777, 137, 649, 393, 905, 73, 585, 329, 841, 201, 713, 457, 969, 41, 553, 297, 809, 169, 681, 425, 937, 105, 617, 361, 873, 233, 745, 489, 1001, 25, 537, 281, 793, 153, 665, 409, 921, 89, 601, 345, 857, 217, 729, 473, 985, 57, 569, 313, 825, 185, 697, 441, 953, 121, 633, 377, 889, 249, 761, 505, 1017, 5, 517, 261, 773, 133, 645, 389, 901, 69, 581, 325, 837, 197, 709, 453, 965, 37, 549, 293, 805, 165, 677, 421, 933, 101, 613, 357, 869, 229, 741, 485, 997, 21, 533, 277, 789, 149, 661, 405, 917, 85, 597, 341, 853, 213, 725, 469, 981, 53, 565, 309, 821, 181, 693, 437, 949, 117, 629, 373, 885, 245, 757, 501, 1013, 13, 525, 269, 781, 141, 653, 397, 909, 77, 589, 333, 845, 205, 717, 461, 973, 45, 557, 301, 813, 173, 685, 429, 941, 109, 621, 365, 877, 237, 749, 493, 1005, 29, 541, 285, 797, 157, 669, 413, 925, 93, 605, 349, 861, 221, 733, 477, 989, 61, 573, 317, 829, 189, 701, 445, 957, 125, 637, 381, 893, 253, 765, 509, 1021, 3, 515, 259, 771, 131, 643, 387, 899, 67, 579, 323, 835, 195, 707, 451, 963, 35, 547, 291, 803, 163, 675, 419, 931, 99, 611, 355, 867, 227, 739, 483, 995, 19, 531, 275, 787, 147, 659, 403, 915, 83, 595, 339, 851, 211, 723, 467, 979, 51, 563, 307, 819, 179, 691, 435, 947, 115, 627, 371, 883, 243, 755, 499, 1011, 11, 523, 267, 779, 139, 651, 395, 907, 75, 587, 331, 843, 203, 715, 459, 971, 43, 555, 299, 811, 171, 683, 427, 939, 107, 619, 363, 875, 235, 747, 491, 1003, 27, 539, 283, 795, 155, 667, 411, 923, 91, 603, 347, 859, 219, 731, 475, 987, 59, 571, 315, 827, 187, 699, 443, 955, 123, 635, 379, 891, 251, 763, 507, 1019, 7, 519, 263, 775, 135, 647, 391, 903, 71, 583, 327, 839, 199, 711, 455, 967, 39, 551, 295, 807, 167, 679, 423, 935, 103, 615, 359, 871, 231, 743, 487, 999, 23, 535, 279, 791, 151, 663, 407, 919, 87, 599, 343, 855, 215, 727, 471, 983, 55, 567, 311, 823, 183, 695, 439, 951, 119, 631, 375, 887, 247, 759, 503, 1015, 15, 527, 271, 783, 143, 655, 399, 911, 79, 591, 335, 847, 207, 719, 463, 975, 47, 559, 303, 815, 175, 687, 431, 943, 111, 623, 367, 879, 239, 751, 495, 1007, 31, 543, 287, 799, 159, 671, 415, 927, 
    95, 607, 351, 863, 223, 735, 479, 991, 63, 575, 319, 831, 191, 703, 447, 959, 127, 639, 383, 895, 255, 767, 511, 1023};
    private static final long[] gauss_1024_12289 = {1283868770400643928L, 6416574995475331444L, 4078260278032692663L, 2353523259288686585L, 1227179971273316331L, 575931623374121527L, 242543240509105209L, 91437049221049666L, 30799446349977173L, 9255276791179340L, 2478152334826140L, 590642893610164L, 125206034929641L, 23590435911403L, 3948334035941L, 586753615614L, 77391054539L, 9056793210L, 940121950, 86539696, 7062824, 510971, 32764, 1862, 94, 4, 0};
    private static final int[] MAX_BL_SMALL = {1, 1, 2, 2, 4, 7, 14, 27, 53, 106, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN};
    private static final int[] MAX_BL_LARGE = {2, 2, 5, 7, 12, 21, 40, 78, CarSettingID.Recv.EMS_PEDAL_LEVEL, StatusLine.HTTP_PERM_REDIRECT};
    private static final int[] bitlength_avg = {4, 11, 24, 50, 102, CarSettingID.Recv.IGM_OVER_TEMP, 401, 794, 1577, 3138, 6308};
    private static final int[] bitlength_std = {0, 1, 1, 1, 1, 2, 4, 5, 8, 13, 25};

    private static long get_rng_u64(SHAKEDigest sHAKEDigest) {
        byte[] bArr = new byte[8];
        sHAKEDigest.doOutput(bArr, 0, 8);
        return Pack.littleEndianToLong(bArr, 0);
    }

    public static void keygen(SHAKEDigest sHAKEDigest, byte[] bArr, byte[] bArr2, byte[] bArr3, short[] sArr, int i10) {
        int i11;
        int i12;
        byte b10;
        int iMkn = mkn(i10);
        short[] sArr2 = sArr;
        while (true) {
            double[] dArr = new double[iMkn * 3];
            poly_small_mkgauss(sHAKEDigest, bArr, i10);
            poly_small_mkgauss(sHAKEDigest, bArr2, i10);
            int i13 = 1 << (FalconCodec.max_fg_bits[i10] - 1);
            for (int i14 = 0; i14 < iMkn; i14++) {
                byte b11 = bArr[i14];
                if (b11 >= i13 || b11 <= (i12 = -i13) || (b10 = bArr2[i14]) >= i13 || b10 <= i12) {
                    i13 = -1;
                    break;
                }
            }
            if (i13 >= 0) {
                int iPoly_small_sqnorm = poly_small_sqnorm(bArr, i10);
                int iPoly_small_sqnorm2 = poly_small_sqnorm(bArr2, i10);
                if ((((-((iPoly_small_sqnorm | iPoly_small_sqnorm2) >>> 31)) | (iPoly_small_sqnorm + iPoly_small_sqnorm2)) & 4294967295L) >= 16823) {
                    continue;
                } else {
                    int i15 = iMkn + iMkn;
                    poly_small_to_fp(dArr, 0, bArr, i10);
                    poly_small_to_fp(dArr, iMkn, bArr2, i10);
                    FalconFFT.FFT(dArr, 0, i10);
                    FalconFFT.FFT(dArr, iMkn, i10);
                    FalconFFT.poly_invnorm2_fft(dArr, i15, dArr, 0, dArr, iMkn, i10);
                    FalconFFT.poly_adj_fft(dArr, 0, i10);
                    FalconFFT.poly_adj_fft(dArr, iMkn, i10);
                    FalconFFT.poly_mulconst(dArr, 0, 12289.0d, i10);
                    FalconFFT.poly_mulconst(dArr, iMkn, 12289.0d, i10);
                    FalconFFT.poly_mul_autoadj_fft(dArr, 0, dArr, i15, i10);
                    FalconFFT.poly_mul_autoadj_fft(dArr, iMkn, dArr, i15, i10);
                    FalconFFT.iFFT(dArr, 0, i10);
                    FalconFFT.iFFT(dArr, iMkn, i10);
                    double d10 = 0.0d;
                    for (int i16 = 0; i16 < iMkn; i16++) {
                        double d11 = dArr[i16];
                        double d12 = dArr[iMkn + i16];
                        d10 += (d12 * d12) + (d11 * d11);
                    }
                    if (d10 >= 16822.4121d) {
                        continue;
                    } else {
                        short[] sArr3 = new short[iMkn * 2];
                        if (sArr2 == null) {
                            sArr2 = sArr3;
                            i11 = iMkn;
                        } else {
                            i11 = 0;
                        }
                        if (FalconVrfy.compute_public(sArr2, 0, bArr, bArr2, i10, sArr3, i11) != 0) {
                            if (solve_NTRU(i10, bArr3, bArr, bArr2, (1 << (FalconCodec.max_FG_bits[i10] - 1)) - 1, new int[i10 > 2 ? iMkn * 28 : iMkn * 84]) != 0) {
                                return;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    private static void make_fg(int[] iArr, int i10, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        int iMkn = mkn(i11);
        int i14 = i10 + iMkn;
        int i15 = FalconSmallPrimeList.PRIMES[0].f12302p;
        for (int i16 = 0; i16 < iMkn; i16++) {
            iArr[i10 + i16] = modp_set(bArr[i16], i15);
            iArr[i14 + i16] = modp_set(bArr2[i16], i15);
        }
        if (i12 != 0 || i13 == 0) {
            int i17 = 0;
            while (i17 < i12) {
                int i18 = i17 + 1;
                make_fg_step(iArr, i10, i11 - i17, i17, i17 != 0 ? 1 : 0, (i18 < i12 || i13 != 0) ? 1 : 0);
                i17 = i18;
            }
            return;
        }
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i19 = falconSmallPrimeArr[0].f12302p;
        int iModp_ninv31 = modp_ninv31(i19);
        int i20 = i14 + iMkn;
        modp_mkgm2(iArr, i20, iArr, i20 + iMkn, i11, falconSmallPrimeArr[0].f12301g, i19, iModp_ninv31);
        modp_NTT2(iArr, i10, iArr, i20, i11, i19, iModp_ninv31);
        modp_NTT2(iArr, i14, iArr, i20, i11, i19, iModp_ninv31);
    }

    private static void make_fg_step(int[] iArr, int i10, int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20 = 1 << i11;
        int i21 = i20 >> 1;
        int[] iArr2 = MAX_BL_SMALL;
        int i22 = iArr2[i12];
        int i23 = iArr2[i12 + 1];
        int i24 = i21 * i23;
        int i25 = i10 + i24;
        int i26 = i25 + i24;
        int i27 = i20 * i22;
        int i28 = i26 + i27;
        int i29 = i28 + i27;
        int i30 = i29 + i20;
        int i31 = i30 + i20;
        System.arraycopy(iArr, i10, iArr, i26, i20 * 2 * i22);
        int i32 = 0;
        while (i32 < i22) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int i33 = falconSmallPrimeArr[i32].f12302p;
            int iModp_ninv31 = modp_ninv31(i33);
            int iModp_R2 = modp_R2(i33, iModp_ninv31);
            int i34 = i32;
            int i35 = i26;
            modp_mkgm2(iArr, i29, iArr, i30, i11, falconSmallPrimeArr[i32].f12301g, i33, iModp_ninv31);
            int i36 = i35 + i34;
            int i37 = i36;
            int i38 = 0;
            while (i38 < i20) {
                iArr[i31 + i38] = iArr[i37];
                i38++;
                i37 += i22;
            }
            if (i13 == 0) {
                modp_NTT2(iArr, i31, iArr, i29, i11, i33, iModp_ninv31);
            }
            int i39 = i10 + i34;
            int i40 = i39;
            int i41 = 0;
            while (i41 < i21) {
                int i42 = i31 + (i41 << 1);
                iArr[i40] = modp_montymul(modp_montymul(iArr[i42], iArr[i42 + 1], i33, iModp_ninv31), iModp_R2, i33, iModp_ninv31);
                i41++;
                i40 += i23;
            }
            if (i13 != 0) {
                i16 = iModp_ninv31;
                i17 = i33;
                i15 = iModp_R2;
                modp_iNTT2_ext(iArr, i36, i22, iArr, i30, i11, i33, i16);
            } else {
                i15 = iModp_R2;
                i16 = iModp_ninv31;
                i17 = i33;
            }
            int i43 = i28 + i34;
            int i44 = i43;
            int i45 = 0;
            while (i45 < i20) {
                iArr[i31 + i45] = iArr[i44];
                i45++;
                i44 += i22;
            }
            if (i13 == 0) {
                modp_NTT2(iArr, i31, iArr, i29, i11, i17, i16);
            }
            int i46 = i25 + i34;
            int i47 = i46;
            int i48 = 0;
            while (i48 < i21) {
                int i49 = i31 + (i48 << 1);
                int i50 = i16;
                int i51 = i17;
                iArr[i47] = modp_montymul(modp_montymul(iArr[i49], iArr[i49 + 1], i51, i50), i15, i51, i50);
                i48++;
                i47 += i23;
            }
            int i52 = i16;
            int i53 = i17;
            if (i13 != 0) {
                i18 = i52;
                i19 = i53;
                modp_iNTT2_ext(iArr, i43, i22, iArr, i30, i11, i53, i18);
            } else {
                i18 = i52;
                i19 = i53;
            }
            if (i14 == 0) {
                int i54 = i11 - 1;
                int i55 = i19;
                int i56 = i18;
                modp_iNTT2_ext(iArr, i39, i23, iArr, i30, i54, i55, i56);
                modp_iNTT2_ext(iArr, i46, i23, iArr, i30, i54, i55, i56);
            }
            i32 = i34 + 1;
            i26 = i35;
        }
        int i57 = i26;
        zint_rebuild_CRT(iArr, i57, i22, i22, i20, 1, iArr, i29);
        zint_rebuild_CRT(iArr, i28, i22, i22, i20, 1, iArr, i29);
        int i58 = i22;
        while (i58 < i23) {
            FalconSmallPrime[] falconSmallPrimeArr2 = FalconSmallPrimeList.PRIMES;
            int i59 = falconSmallPrimeArr2[i58].f12302p;
            int iModp_ninv312 = modp_ninv31(i59);
            int iModp_R22 = modp_R2(i59, iModp_ninv312);
            int iModp_Rx = modp_Rx(i22, i59, iModp_ninv312, iModp_R22);
            int i60 = i58;
            modp_mkgm2(iArr, i29, iArr, i30, i11, falconSmallPrimeArr2[i58].f12301g, i59, iModp_ninv312);
            int i61 = i57;
            int i62 = 0;
            while (i62 < i20) {
                iArr[i31 + i62] = zint_mod_small_signed(iArr, i61, i22, i59, iModp_ninv312, iModp_R22, iModp_Rx);
                i62++;
                i61 += i22;
            }
            modp_NTT2(iArr, i31, iArr, i29, i11, i59, iModp_ninv312);
            int i63 = i10 + i60;
            int i64 = i63;
            int i65 = 0;
            while (i65 < i21) {
                int i66 = i31 + (i65 << 1);
                iArr[i64] = modp_montymul(modp_montymul(iArr[i66], iArr[i66 + 1], i59, iModp_ninv312), iModp_R22, i59, iModp_ninv312);
                i65++;
                i64 += i23;
            }
            int i67 = iModp_R22;
            int i68 = iModp_ninv312;
            int i69 = i59;
            int i70 = i28;
            int i71 = 0;
            while (i71 < i20) {
                int i72 = i67;
                iArr[i31 + i71] = zint_mod_small_signed(iArr, i70, i22, i69, i68, i72, iModp_Rx);
                i71++;
                i70 += i22;
                i67 = i72;
                i68 = i68;
                i69 = i69;
            }
            int i73 = i67;
            int i74 = i68;
            int i75 = i69;
            modp_NTT2(iArr, i31, iArr, i29, i11, i75, i74);
            int i76 = i25 + i60;
            int i77 = i76;
            int i78 = 0;
            while (i78 < i21) {
                int i79 = i31 + (i78 << 1);
                iArr[i77] = modp_montymul(modp_montymul(iArr[i79], iArr[i79 + 1], i75, i74), i73, i75, i74);
                i78++;
                i77 += i23;
            }
            if (i14 == 0) {
                int i80 = i11 - 1;
                modp_iNTT2_ext(iArr, i63, i23, iArr, i30, i80, i75, i74);
                modp_iNTT2_ext(iArr, i76, i23, iArr, i30, i80, i75, i74);
            }
            i58 = i60 + 1;
        }
    }

    private static int mkgauss(SHAKEDigest sHAKEDigest, int i10) {
        int i11 = 1 << (10 - i10);
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            long j10 = get_rng_u64(sHAKEDigest);
            int i14 = (int) (j10 >>> 63);
            int i15 = (int) (((j10 & Long.MAX_VALUE) - gauss_1024_12289[0]) >>> 63);
            long j11 = Long.MAX_VALUE & get_rng_u64(sHAKEDigest);
            int i16 = 1;
            int i17 = 0;
            while (true) {
                long[] jArr = gauss_1024_12289;
                if (i16 < jArr.length) {
                    int i18 = ((int) ((j11 - jArr[i16]) >>> 63)) ^ 1;
                    i17 |= (-((i15 ^ 1) & i18)) & i16;
                    i15 |= i18;
                    i16++;
                }
            }
            i12 += ((-i14) ^ i17) + i14;
        }
        return i12;
    }

    private static int mkn(int i10) {
        return 1 << i10;
    }

    private static void modp_NTT2(int[] iArr, int i10, int[] iArr2, int i11, int i12, int i13, int i14) {
        modp_NTT2_ext(iArr, i10, 1, iArr2, i11, i12, i13, i14);
    }

    private static void modp_NTT2_ext(int[] iArr, int i10, int i11, int[] iArr2, int i12, int i13, int i14, int i15) {
        if (i13 == 0) {
            return;
        }
        int iMkn = mkn(i13);
        int i16 = 1;
        int i17 = iMkn;
        while (i16 < iMkn) {
            int i18 = i17 >> 1;
            int i19 = 0;
            int i20 = 0;
            while (i19 < i16) {
                int i21 = iArr2[i12 + i16 + i19];
                int i22 = (i20 * i11) + i10;
                int i23 = (i18 * i11) + i22;
                int i24 = 0;
                while (i24 < i18) {
                    int i25 = iArr[i22];
                    int iModp_montymul = modp_montymul(iArr[i23], i21, i14, i15);
                    iArr[i22] = modp_add(i25, iModp_montymul, i14);
                    iArr[i23] = modp_sub(i25, iModp_montymul, i14);
                    i24++;
                    i22 += i11;
                    i23 += i11;
                }
                i19++;
                i20 += i17;
            }
            i16 <<= 1;
            i17 = i18;
        }
    }

    private static int modp_R(int i10) {
        return Integer.MIN_VALUE - i10;
    }

    private static int modp_R2(int i10, int i11) {
        int iModp_R = modp_R(i10);
        int iModp_add = modp_add(iModp_R, iModp_R, i10);
        int iModp_montymul = modp_montymul(iModp_add, iModp_add, i10, i11);
        int iModp_montymul2 = modp_montymul(iModp_montymul, iModp_montymul, i10, i11);
        int iModp_montymul3 = modp_montymul(iModp_montymul2, iModp_montymul2, i10, i11);
        int iModp_montymul4 = modp_montymul(iModp_montymul3, iModp_montymul3, i10, i11);
        int iModp_montymul5 = modp_montymul(iModp_montymul4, iModp_montymul4, i10, i11);
        return (iModp_montymul5 + (i10 & (-(iModp_montymul5 & 1)))) >>> 1;
    }

    private static int modp_Rx(int i10, int i11, int i12, int i13) {
        int i14 = i10 - 1;
        int iModp_R = modp_R(i11);
        int i15 = 0;
        while (true) {
            int i16 = 1 << i15;
            if (i16 > i14) {
                return iModp_R;
            }
            if ((i16 & i14) != 0) {
                iModp_R = modp_montymul(iModp_R, i13, i11, i12);
            }
            i13 = modp_montymul(i13, i13, i11, i12);
            i15++;
        }
    }

    private static int modp_add(int i10, int i11, int i12) {
        int i13 = (i10 + i11) - i12;
        return i13 + ((-(i13 >>> 31)) & i12);
    }

    private static int modp_div(int i10, int i11, int i12, int i13, int i14) {
        int i15 = i12 - 2;
        for (int i16 = 30; i16 >= 0; i16--) {
            int iModp_montymul = modp_montymul(i14, i14, i12, i13);
            i14 = iModp_montymul ^ ((-(1 & (i15 >>> i16))) & (modp_montymul(iModp_montymul, i11, i12, i13) ^ iModp_montymul));
        }
        return modp_montymul(i10, modp_montymul(i14, 1, i12, i13), i12, i13);
    }

    private static void modp_iNTT2(int[] iArr, int i10, int[] iArr2, int i11, int i12, int i13, int i14) {
        modp_iNTT2_ext(iArr, i10, 1, iArr2, i11, i12, i13, i14);
    }

    private static void modp_iNTT2_ext(int[] iArr, int i10, int i11, int[] iArr2, int i12, int i13, int i14, int i15) {
        int i16;
        if (i13 == 0) {
            return;
        }
        int iMkn = mkn(i13);
        int i17 = iMkn;
        int i18 = 1;
        while (true) {
            i16 = 0;
            if (i17 <= 1) {
                break;
            }
            i17 >>= 1;
            int i19 = i18 << 1;
            int i20 = 0;
            int i21 = 0;
            while (i20 < i17) {
                int i22 = iArr2[i12 + i17 + i20];
                int i23 = (i21 * i11) + i10;
                int i24 = (i18 * i11) + i23;
                int i25 = 0;
                while (i25 < i18) {
                    int i26 = iArr[i23];
                    int i27 = iArr[i24];
                    iArr[i23] = modp_add(i26, i27, i14);
                    iArr[i24] = modp_montymul(modp_sub(i26, i27, i14), i22, i14, i15);
                    i25++;
                    i23 += i11;
                    i24 += i11;
                }
                i20++;
                i21 += i19;
            }
            i18 = i19;
        }
        int i28 = 1 << (31 - i13);
        int i29 = i10;
        while (i16 < iMkn) {
            iArr[i29] = modp_montymul(iArr[i29], i28, i14, i15);
            i16++;
            i29 += i11;
        }
    }

    private static void modp_mkgm2(int[] iArr, int i10, int[] iArr2, int i11, int i12, int i13, int i14, int i15) {
        int iMkn = mkn(i12);
        int iModp_R2 = modp_R2(i14, i15);
        int iModp_montymul = modp_montymul(i13, iModp_R2, i14, i15);
        for (int i16 = i12; i16 < 10; i16++) {
            iModp_montymul = modp_montymul(iModp_montymul, iModp_montymul, i14, i15);
        }
        int iModp_div = modp_div(iModp_R2, iModp_montymul, i14, i15, modp_R(i14));
        int i17 = 10 - i12;
        int iModp_R = modp_R(i14);
        int iModp_montymul2 = iModp_R;
        for (int i18 = 0; i18 < iMkn; i18++) {
            short s8 = REV10[i18 << i17];
            iArr[i10 + s8] = iModp_R;
            iArr2[s8 + i11] = iModp_montymul2;
            iModp_R = modp_montymul(iModp_R, iModp_montymul, i14, i15);
            iModp_montymul2 = modp_montymul(iModp_montymul2, iModp_div, i14, i15);
        }
    }

    private static int modp_montymul(int i10, int i11, int i12, int i13) {
        long unsignedLong = toUnsignedLong(i10) * toUnsignedLong(i11);
        int i14 = ((int) (((((i13 * unsignedLong) & 2147483647L) * i12) + unsignedLong) >>> 31)) - i12;
        return i14 + ((-(i14 >>> 31)) & i12);
    }

    private static int modp_ninv31(int i10) {
        int i11 = 2 - i10;
        int i12 = (2 - (i10 * i11)) * i11;
        int i13 = (2 - (i10 * i12)) * i12;
        int i14 = (2 - (i10 * i13)) * i13;
        return (-((2 - (i10 * i14)) * i14)) & Integer.MAX_VALUE;
    }

    private static int modp_norm(int i10, int i11) {
        return i10 - (i11 & (((i10 - ((i11 + 1) >>> 1)) >>> 31) - 1));
    }

    private static void modp_poly_rec_res(int[] iArr, int i10, int i11, int i12, int i13, int i14) {
        int i15 = 1 << (i11 - 1);
        for (int i16 = 0; i16 < i15; i16++) {
            int i17 = (i16 << 1) + i10;
            iArr[i10 + i16] = modp_montymul(modp_montymul(iArr[i17], iArr[i17 + 1], i12, i13), i14, i12, i13);
        }
    }

    private static int modp_set(int i10, int i11) {
        return i10 + (i11 & (-(i10 >>> 31)));
    }

    private static int modp_sub(int i10, int i11, int i12) {
        int i13 = i10 - i11;
        return i13 + ((-(i13 >>> 31)) & i12);
    }

    private static void poly_big_to_fp(double[] dArr, int[] iArr, int i10, int i11, int i12, int i13) {
        int iMkn = mkn(i13);
        double d10 = 0.0d;
        if (i11 == 0) {
            for (int i14 = 0; i14 < iMkn; i14++) {
                dArr[i14] = 0.0d;
            }
            return;
        }
        int i15 = i10;
        int i16 = 0;
        while (i16 < iMkn) {
            int i17 = -(iArr[(i15 + i11) - 1] >>> 30);
            int i18 = i17 >>> 1;
            int i19 = i17 & 1;
            double d11 = 1.0d;
            double d12 = d10;
            int i20 = 0;
            while (i20 < i11) {
                int i21 = (iArr[i15 + i20] ^ i18) + i19;
                i19 = i21 >>> 31;
                int i22 = i21 & Integer.MAX_VALUE;
                double d13 = i22 - ((i22 << 1) & i17);
                Double.isNaN(d13);
                d12 += d13 * d11;
                i20++;
                d11 *= 2.147483648E9d;
            }
            dArr[i16] = d12;
            i16++;
            i15 += i12;
            d10 = 0.0d;
        }
    }

    private static int poly_big_to_small(byte[] bArr, int i10, int[] iArr, int i11, int i12, int i13) {
        int iMkn = mkn(i13);
        for (int i14 = 0; i14 < iMkn; i14++) {
            int iZint_one_to_plain = zint_one_to_plain(iArr, i11 + i14);
            if (iZint_one_to_plain < (-i12) || iZint_one_to_plain > i12) {
                return 0;
            }
            bArr[i10 + i14] = (byte) iZint_one_to_plain;
        }
        return 1;
    }

    private static void poly_small_mkgauss(SHAKEDigest sHAKEDigest, byte[] bArr, int i10) {
        int iMkgauss;
        int iMkn = mkn(i10);
        int i11 = 0;
        for (int i12 = 0; i12 < iMkn; i12++) {
            while (true) {
                iMkgauss = mkgauss(sHAKEDigest, i10);
                if (iMkgauss >= -127 && iMkgauss <= 127) {
                    if (i12 != iMkn - 1) {
                        i11 ^= iMkgauss & 1;
                        break;
                    } else if (((iMkgauss & 1) ^ i11) == 0) {
                    }
                }
            }
            bArr[i12] = (byte) iMkgauss;
        }
    }

    private static int poly_small_sqnorm(byte[] bArr, int i10) {
        int iMkn = mkn(i10);
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < iMkn; i13++) {
            byte b10 = bArr[i13];
            i11 += b10 * b10;
            i12 |= i11;
        }
        return (-(i12 >>> 31)) | i11;
    }

    private static void poly_small_to_fp(double[] dArr, int i10, byte[] bArr, int i11) {
        int iMkn = mkn(i11);
        for (int i12 = 0; i12 < iMkn; i12++) {
            dArr[i10 + i12] = bArr[i12];
        }
    }

    private static void poly_sub_scaled(int[] iArr, int i10, int i11, int i12, int[] iArr2, int i13, int i14, int i15, int[] iArr3, int i16, int i17, int i18) {
        int iMkn = mkn(i18);
        for (int i19 = 0; i19 < iMkn; i19++) {
            int i20 = -iArr3[i19];
            int i21 = (i19 * i12) + i10;
            int i22 = i13;
            for (int i23 = 0; i23 < iMkn; i23++) {
                zint_add_scaled_mul_small(iArr, i21, i11, iArr2, i22, i14, i20, i16, i17);
                if (i19 + i23 == iMkn - 1) {
                    i20 = -i20;
                    i21 = i10;
                } else {
                    i21 += i12;
                }
                i22 += i15;
            }
        }
    }

    private static void poly_sub_scaled_ntt(int[] iArr, int i10, int i11, int i12, int[] iArr2, int i13, int i14, int i15, int[] iArr3, int i16, int i17, int i18, int[] iArr4, int i19) {
        int iMkn = mkn(i18);
        int i20 = i14 + 1;
        int iMkn2 = i19 + mkn(i18);
        int iMkn3 = iMkn2 + mkn(i18);
        int i21 = (iMkn * i20) + iMkn3;
        int i22 = 0;
        while (i22 < i20) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int i23 = falconSmallPrimeArr[i22].f12302p;
            int iModp_ninv31 = modp_ninv31(i23);
            int iModp_R2 = modp_R2(i23, iModp_ninv31);
            int iModp_Rx = modp_Rx(i14, i23, iModp_ninv31, iModp_R2);
            modp_mkgm2(iArr4, i19, iArr4, iMkn2, i18, falconSmallPrimeArr[i22].f12301g, i23, iModp_ninv31);
            for (int i24 = 0; i24 < iMkn; i24++) {
                iArr4[i21 + i24] = modp_set(iArr3[i24], i23);
            }
            int i25 = i22;
            int i26 = i20;
            int i27 = iMkn;
            modp_NTT2(iArr4, i21, iArr4, i19, i18, i23, iModp_ninv31);
            int i28 = iMkn3 + i25;
            int i29 = i13;
            int i30 = i28;
            int i31 = 0;
            while (i31 < i27) {
                iArr4[i30] = zint_mod_small_signed(iArr2, i29, i14, i23, iModp_ninv31, iModp_R2, iModp_Rx);
                i31++;
                i29 += i15;
                i30 += i26;
            }
            iMkn = i27;
            modp_NTT2_ext(iArr4, i28, i26, iArr4, i19, i18, i23, iModp_ninv31);
            int i32 = i28;
            int i33 = 0;
            while (i33 < iMkn) {
                iArr4[i32] = modp_montymul(modp_montymul(iArr4[i21 + i33], iArr4[i32], i23, iModp_ninv31), iModp_R2, i23, iModp_ninv31);
                i33++;
                i32 += i26;
            }
            modp_iNTT2_ext(iArr4, i28, i26, iArr4, iMkn2, i18, i23, iModp_ninv31);
            i22 = i25 + 1;
            i20 = i26;
        }
        int i34 = i20;
        int i35 = iMkn;
        zint_rebuild_CRT(iArr4, iMkn3, i34, i34, iMkn, 1, iArr4, i21);
        int i36 = i10;
        int i37 = 0;
        while (i37 < i35) {
            zint_sub_scaled(iArr, i36, i11, iArr4, iMkn3, i34, i16, i17);
            i37++;
            i36 += i12;
            iMkn3 += i34;
        }
    }

    private static int solve_NTRU(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, int i11, int[] iArr) {
        int iMkn = mkn(i10);
        if (solve_NTRU_deepest(i10, bArr2, bArr3, iArr) == 0) {
            return 0;
        }
        if (i10 <= 2) {
            int i12 = i10;
            while (true) {
                int i13 = i12 - 1;
                if (i12 <= 0) {
                    break;
                }
                if (solve_NTRU_intermediate(i10, bArr2, bArr3, i13, iArr) == 0) {
                    return 0;
                }
                i12 = i13;
            }
        } else {
            int i14 = i10;
            while (true) {
                int i15 = i14 - 1;
                if (i14 > 2) {
                    if (solve_NTRU_intermediate(i10, bArr2, bArr3, i15, iArr) == 0) {
                        return 0;
                    }
                    i14 = i15;
                } else if (solve_NTRU_binary_depth1(i10, bArr2, bArr3, iArr) == 0 || solve_NTRU_binary_depth0(i10, bArr2, bArr3, iArr) == 0) {
                    return 0;
                }
            }
        }
        byte[] bArr4 = new byte[iMkn];
        if (poly_big_to_small(bArr, 0, iArr, 0, i11, i10) == 0 || poly_big_to_small(bArr4, 0, iArr, iMkn, i11, i10) == 0) {
            return 0;
        }
        int i16 = iMkn + iMkn;
        int i17 = i16 + iMkn;
        int i18 = i17 + iMkn;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i19 = falconSmallPrimeArr[0].f12302p;
        int iModp_ninv31 = modp_ninv31(i19);
        modp_mkgm2(iArr, i18, iArr, 0, i10, falconSmallPrimeArr[0].f12301g, i19, iModp_ninv31);
        for (int i20 = 0; i20 < iMkn; i20++) {
            iArr[i20] = modp_set(bArr4[i20], i19);
        }
        for (int i21 = 0; i21 < iMkn; i21++) {
            iArr[iMkn + i21] = modp_set(bArr2[i21], i19);
            iArr[i16 + i21] = modp_set(bArr3[i21], i19);
            iArr[i17 + i21] = modp_set(bArr[i21], i19);
        }
        modp_NTT2(iArr, iMkn, iArr, i18, i10, i19, iModp_ninv31);
        modp_NTT2(iArr, i16, iArr, i18, i10, i19, iModp_ninv31);
        modp_NTT2(iArr, i17, iArr, i18, i10, i19, iModp_ninv31);
        modp_NTT2(iArr, 0, iArr, i18, i10, i19, iModp_ninv31);
        int iModp_montymul = modp_montymul(12289, 1, i19, iModp_ninv31);
        for (int i22 = 0; i22 < iMkn; i22++) {
            if (modp_sub(modp_montymul(iArr[iMkn + i22], iArr[i22], i19, iModp_ninv31), modp_montymul(iArr[i16 + i22], iArr[i17 + i22], i19, iModp_ninv31), i19) != iModp_montymul) {
                return 0;
            }
        }
        return 1;
    }

    private static int solve_NTRU_binary_depth0(int i10, byte[] bArr, byte[] bArr2, int[] iArr) {
        int i11 = 1 << i10;
        int i12 = i11 >> 1;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i13 = falconSmallPrimeArr[0].f12302p;
        int iModp_ninv31 = modp_ninv31(i13);
        int iModp_R2 = modp_R2(i13, iModp_ninv31);
        int i14 = i12 + i12;
        int i15 = i14 + i11;
        int i16 = i15 + i11;
        int i17 = i16 + i11;
        modp_mkgm2(iArr, i16, iArr, i17, i10, falconSmallPrimeArr[0].f12301g, i13, iModp_ninv31);
        for (int i18 = 0; i18 < i12; i18++) {
            iArr[i18] = modp_set(zint_one_to_plain(iArr, i18), i13);
            int i19 = i12 + i18;
            iArr[i19] = modp_set(zint_one_to_plain(iArr, i19), i13);
        }
        int i20 = i10 - 1;
        modp_NTT2(iArr, 0, iArr, i16, i20, i13, iModp_ninv31);
        modp_NTT2(iArr, i12, iArr, i16, i20, i13, iModp_ninv31);
        for (int i21 = 0; i21 < i11; i21++) {
            iArr[i14 + i21] = modp_set(bArr[i21], i13);
            iArr[i15 + i21] = modp_set(bArr2[i21], i13);
        }
        modp_NTT2(iArr, i14, iArr, i16, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i15, iArr, i16, i10, i13, iModp_ninv31);
        int i22 = 0;
        while (i22 < i11) {
            int i23 = i14 + i22;
            int i24 = iArr[i23];
            int i25 = i23 + 1;
            int i26 = iArr[i25];
            int i27 = i15 + i22;
            int i28 = iArr[i27];
            int i29 = i27 + 1;
            int i30 = iArr[i29];
            int i31 = i22 >> 1;
            int i32 = i11;
            int iModp_montymul = modp_montymul(iArr[i31], iModp_R2, i13, iModp_ninv31);
            int i33 = i12;
            int iModp_montymul2 = modp_montymul(iArr[i12 + i31], iModp_R2, i13, iModp_ninv31);
            iArr[i23] = modp_montymul(i30, iModp_montymul, i13, iModp_ninv31);
            iArr[i25] = modp_montymul(i28, iModp_montymul, i13, iModp_ninv31);
            iArr[i27] = modp_montymul(i26, iModp_montymul2, i13, iModp_ninv31);
            iArr[i29] = modp_montymul(i24, iModp_montymul2, i13, iModp_ninv31);
            i22 += 2;
            i11 = i32;
            i12 = i33;
        }
        int i34 = i11;
        int i35 = i12;
        modp_iNTT2(iArr, i14, iArr, i17, i10, i13, iModp_ninv31);
        modp_iNTT2(iArr, i15, iArr, i17, i10, i13, iModp_ninv31);
        int i36 = i34 + i34;
        System.arraycopy(iArr, i14, iArr, 0, i34 * 2);
        int i37 = i36 + i34;
        int i38 = i37 + i34;
        int i39 = i38 + i34;
        int i40 = i39 + i34;
        modp_mkgm2(iArr, i36, iArr, i37, i10, FalconSmallPrimeList.PRIMES[0].f12301g, i13, iModp_ninv31);
        modp_NTT2(iArr, 0, iArr, i36, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i34, iArr, i36, i10, i13, iModp_ninv31);
        int iModp_set = modp_set(bArr[0], i13);
        iArr[i40] = iModp_set;
        iArr[i39] = iModp_set;
        for (int i41 = 1; i41 < i34; i41++) {
            iArr[i39 + i41] = modp_set(bArr[i41], i13);
            iArr[(i40 + i34) - i41] = modp_set(-bArr[i41], i13);
        }
        modp_NTT2(iArr, i39, iArr, i36, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i40, iArr, i36, i10, i13, iModp_ninv31);
        for (int i42 = 0; i42 < i34; i42++) {
            int iModp_montymul3 = modp_montymul(iArr[i40 + i42], iModp_R2, i13, iModp_ninv31);
            iArr[i37 + i42] = modp_montymul(iModp_montymul3, iArr[i42], i13, iModp_ninv31);
            iArr[i38 + i42] = modp_montymul(iModp_montymul3, iArr[i39 + i42], i13, iModp_ninv31);
        }
        int iModp_set2 = modp_set(bArr2[0], i13);
        iArr[i40] = iModp_set2;
        iArr[i39] = iModp_set2;
        for (int i43 = 1; i43 < i34; i43++) {
            iArr[i39 + i43] = modp_set(bArr2[i43], i13);
            iArr[(i40 + i34) - i43] = modp_set(-bArr2[i43], i13);
        }
        modp_NTT2(iArr, i39, iArr, i36, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i40, iArr, i36, i10, i13, iModp_ninv31);
        for (int i44 = 0; i44 < i34; i44++) {
            int iModp_montymul4 = modp_montymul(iArr[i40 + i44], iModp_R2, i13, iModp_ninv31);
            int i45 = i37 + i44;
            iArr[i45] = modp_add(iArr[i45], modp_montymul(iModp_montymul4, iArr[i34 + i44], i13, iModp_ninv31), i13);
            int i46 = i38 + i44;
            iArr[i46] = modp_add(iArr[i46], modp_montymul(iModp_montymul4, iArr[i39 + i44], i13, iModp_ninv31), i13);
        }
        modp_mkgm2(iArr, i36, iArr, i39, i10, FalconSmallPrimeList.PRIMES[0].f12301g, i13, iModp_ninv31);
        modp_iNTT2(iArr, i37, iArr, i39, i10, i13, iModp_ninv31);
        modp_iNTT2(iArr, i38, iArr, i39, i10, i13, iModp_ninv31);
        for (int i47 = 0; i47 < i34; i47++) {
            int i48 = i37 + i47;
            iArr[i36 + i47] = modp_norm(iArr[i48], i13);
            iArr[i48] = modp_norm(iArr[i38 + i47], i13);
        }
        double[] dArr = new double[i34 * 3];
        for (int i49 = 0; i49 < i34; i49++) {
            dArr[i36 + i49] = iArr[i37 + i49];
        }
        FalconFFT.FFT(dArr, i36, i10);
        System.arraycopy(dArr, i36, dArr, i34, i35);
        int i50 = i35 + i34;
        for (int i51 = 0; i51 < i34; i51++) {
            dArr[i50 + i51] = iArr[i36 + i51];
        }
        FalconFFT.FFT(dArr, i50, i10);
        FalconFFT.poly_div_autoadj_fft(dArr, i50, dArr, i34, i10);
        FalconFFT.iFFT(dArr, i50, i10);
        for (int i52 = 0; i52 < i34; i52++) {
            iArr[i36 + i52] = modp_set((int) FPREngine.fpr_rint(dArr[i50 + i52]), i13);
        }
        modp_mkgm2(iArr, i37, iArr, i38, i10, FalconSmallPrimeList.PRIMES[0].f12301g, i13, iModp_ninv31);
        for (int i53 = 0; i53 < i34; i53++) {
            iArr[i39 + i53] = modp_set(bArr[i53], i13);
            iArr[i40 + i53] = modp_set(bArr2[i53], i13);
        }
        modp_NTT2(iArr, i36, iArr, i37, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i39, iArr, i37, i10, i13, iModp_ninv31);
        modp_NTT2(iArr, i40, iArr, i37, i10, i13, iModp_ninv31);
        for (int i54 = 0; i54 < i34; i54++) {
            int iModp_montymul5 = modp_montymul(iArr[i36 + i54], iModp_R2, i13, iModp_ninv31);
            iArr[i54] = modp_sub(iArr[i54], modp_montymul(iModp_montymul5, iArr[i39 + i54], i13, iModp_ninv31), i13);
            int i55 = i34 + i54;
            iArr[i55] = modp_sub(iArr[i55], modp_montymul(iModp_montymul5, iArr[i40 + i54], i13, iModp_ninv31), i13);
        }
        modp_iNTT2(iArr, 0, iArr, i38, i10, i13, iModp_ninv31);
        modp_iNTT2(iArr, i34, iArr, i38, i10, i13, iModp_ninv31);
        for (int i56 = 0; i56 < i34; i56++) {
            iArr[i56] = modp_norm(iArr[i56], i13);
            int i57 = i34 + i56;
            iArr[i57] = modp_norm(iArr[i57], i13);
        }
        return 1;
    }

    private static int solve_NTRU_binary_depth1(int i10, byte[] bArr, byte[] bArr2, int[] iArr) {
        int i11;
        int i12 = 1 << i10;
        int i13 = i10 - 1;
        int i14 = 1 << i13;
        int i15 = i14 >> 1;
        int[] iArr2 = MAX_BL_SMALL;
        int i16 = iArr2[1];
        int i17 = iArr2[2];
        int i18 = MAX_BL_LARGE[1];
        int i19 = i17 * i15;
        int i20 = i19 + i19;
        int i21 = i18 * i14;
        int i22 = i20 + i21;
        int i23 = 0;
        while (i23 < i18) {
            int i24 = FalconSmallPrimeList.PRIMES[i23].f12302p;
            int iModp_ninv31 = modp_ninv31(i24);
            int iModp_R2 = modp_R2(i24, iModp_ninv31);
            int iModp_Rx = modp_Rx(i17, i24, iModp_ninv31, iModp_R2);
            int i25 = i20 + i23;
            int i26 = i22 + i23;
            int i27 = i13;
            int i28 = i19;
            int i29 = 0;
            int i30 = 0;
            while (i29 < i15) {
                int i31 = iModp_ninv31;
                int i32 = i24;
                iArr[i25] = zint_mod_small_signed(iArr, i30, i17, i32, i31, iModp_R2, iModp_Rx);
                iArr[i26] = zint_mod_small_signed(iArr, i28, i17, i32, i31, iModp_R2, iModp_Rx);
                i29++;
                i30 += i17;
                i28 += i17;
                i25 += i18;
                i26 += i18;
                i21 = i21;
                i20 = i20;
                iModp_ninv31 = i31;
                i24 = i32;
                i23 = i23;
                i15 = i15;
                i22 = i22;
                i12 = i12;
                i14 = i14;
            }
            i23++;
            i13 = i27;
            i15 = i15;
            i12 = i12;
            i14 = i14;
        }
        int i33 = i12;
        int i34 = i13;
        int i35 = i14;
        int i36 = i15;
        int i37 = i21;
        System.arraycopy(iArr, i20, iArr, 0, i37);
        System.arraycopy(iArr, i22, iArr, i37, i37);
        int i38 = i37 + i37;
        int i39 = i16 * i35;
        int i40 = i38 + i39;
        int i41 = i40 + i39;
        int i42 = 0;
        while (i42 < i18) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int i43 = falconSmallPrimeArr[i42].f12302p;
            int iModp_ninv312 = modp_ninv31(i43);
            int i44 = i41 + i33;
            int i45 = i44 + i35;
            int i46 = i45 + i33;
            int i47 = i39;
            int iModp_R22 = modp_R2(i43, iModp_ninv312);
            int i48 = iModp_ninv312;
            int i49 = i43;
            int i50 = i40;
            int i51 = i42;
            modp_mkgm2(iArr, i41, iArr, i44, i10, falconSmallPrimeArr[i42].f12301g, i43, i48);
            int i52 = i33;
            for (int i53 = 0; i53 < i52; i53++) {
                iArr[i45 + i53] = modp_set(bArr[i53], i49);
                iArr[i46 + i53] = modp_set(bArr2[i53], i49);
            }
            modp_NTT2(iArr, i45, iArr, i41, i10, i49, i48);
            modp_NTT2(iArr, i46, iArr, i41, i10, i49, i48);
            int i54 = i10;
            int i55 = i34;
            while (i54 > i55) {
                int i56 = i54;
                modp_poly_rec_res(iArr, i45, i54, i49, i48, iModp_R22);
                modp_poly_rec_res(iArr, i46, i56, i49, i48, iModp_R22);
                i54 = i56 - 1;
            }
            int i57 = i41 + i35;
            int i58 = i35;
            System.arraycopy(iArr, i44, iArr, i57, i58);
            int i59 = i57 + i58;
            System.arraycopy(iArr, i45, iArr, i59, i58);
            int i60 = i59 + i58;
            System.arraycopy(iArr, i46, iArr, i60, i58);
            int i61 = i60 + i58;
            int i62 = i61 + i36;
            int i63 = i37 + i51;
            int i64 = i51;
            int i65 = i63;
            int i66 = i36;
            int i67 = 0;
            while (i67 < i66) {
                iArr[i61 + i67] = iArr[i64];
                iArr[i62 + i67] = iArr[i65];
                i67++;
                i64 += i18;
                i65 += i18;
            }
            int i68 = i10 - 2;
            int i69 = i37;
            int i70 = i66;
            modp_NTT2(iArr, i61, iArr, i41, i68, i49, i48);
            modp_NTT2(iArr, i62, iArr, i41, i68, i49, i48);
            int i71 = i51;
            int i72 = i63;
            int i73 = 0;
            while (i73 < i70) {
                int i74 = i73 << 1;
                int i75 = i59 + i74;
                int i76 = iArr[i75];
                int i77 = iArr[i75 + 1];
                int i78 = i74 + i60;
                int i79 = i52;
                int i80 = iArr[i78];
                int i81 = iArr[i78 + 1];
                int i82 = iArr[i61 + i73];
                int i83 = i61;
                int i84 = i49;
                int i85 = i70;
                int i86 = i48;
                int i87 = iModp_R22;
                int iModp_montymul = modp_montymul(i82, i87, i84, i86);
                int i88 = i60;
                int iModp_montymul2 = modp_montymul(iArr[i62 + i73], i87, i84, i86);
                iArr[i71] = modp_montymul(i81, iModp_montymul, i84, i86);
                iArr[i71 + i18] = modp_montymul(i80, iModp_montymul, i84, i86);
                iArr[i72] = modp_montymul(i77, iModp_montymul2, i84, i86);
                iArr[i72 + i18] = modp_montymul(i76, iModp_montymul2, i84, i86);
                i73++;
                int i89 = i18 << 1;
                i71 += i89;
                i72 += i89;
                i48 = i86;
                i70 = i85;
                i52 = i79;
                i60 = i88;
                i49 = i84;
                i61 = i83;
                iModp_R22 = i87;
                i38 = i38;
            }
            int i90 = i52;
            int i91 = i38;
            int i92 = i60;
            int i93 = i49;
            int i94 = i70;
            int i95 = i48;
            modp_iNTT2_ext(iArr, i51, i18, iArr, i57, i55, i93, i95);
            modp_iNTT2_ext(iArr, i63, i18, iArr, i57, i55, i93, i95);
            if (i51 < i16) {
                modp_iNTT2(iArr, i59, iArr, i57, i55, i93, i95);
                modp_iNTT2(iArr, i92, iArr, i57, i55, i93, i95);
                int i96 = i91 + i51;
                int i97 = i50 + i51;
                i11 = i58;
                int i98 = 0;
                while (i98 < i11) {
                    iArr[i96] = iArr[i59 + i98];
                    iArr[i97] = iArr[i92 + i98];
                    i98++;
                    i96 += i16;
                    i97 += i16;
                }
            } else {
                i11 = i58;
            }
            i42 = i51 + 1;
            i33 = i90;
            i39 = i47;
            i38 = i91;
            i40 = i50;
            i34 = i55;
            i35 = i11;
            i37 = i69;
            i36 = i94;
        }
        int i99 = i38;
        int i100 = i39;
        int i101 = i36;
        int i102 = i37;
        int i103 = i35;
        int i104 = i34;
        int i105 = i103 << 1;
        zint_rebuild_CRT(iArr, 0, i18, i18, i105, 1, iArr, i41);
        zint_rebuild_CRT(iArr, i99, i16, i16, i105, 1, iArr, i41);
        double[] dArr = new double[i103];
        double[] dArr2 = new double[i103];
        poly_big_to_fp(dArr, iArr, 0, i18, i18, i104);
        poly_big_to_fp(dArr2, iArr, i102, i18, i18, i104);
        System.arraycopy(iArr, i99, iArr, 0, i16 * 2 * i103);
        double[] dArr3 = new double[i103];
        double[] dArr4 = new double[i103];
        poly_big_to_fp(dArr3, iArr, 0, i16, i16, i104);
        poly_big_to_fp(dArr4, iArr, i100, i16, i16, i104);
        FalconFFT.FFT(dArr, 0, i104);
        FalconFFT.FFT(dArr2, 0, i104);
        FalconFFT.FFT(dArr3, 0, i104);
        FalconFFT.FFT(dArr4, 0, i104);
        double[] dArr5 = new double[i103];
        double[] dArr6 = new double[i101];
        FalconFFT.poly_add_muladj_fft(dArr5, dArr, dArr2, dArr3, dArr4, i104);
        FalconFFT.poly_invnorm2_fft(dArr6, 0, dArr3, 0, dArr4, 0, i104);
        FalconFFT.poly_mul_autoadj_fft(dArr5, 0, dArr6, 0, i104);
        FalconFFT.iFFT(dArr5, 0, i104);
        for (int i106 = 0; i106 < i103; i106++) {
            double d10 = dArr5[i106];
            if (d10 >= 9.223372036854776E18d || -9.223372036854776E18d >= d10) {
                return 0;
            }
            dArr5[i106] = FPREngine.fpr_rint(d10);
        }
        FalconFFT.FFT(dArr5, 0, i104);
        FalconFFT.poly_mul_fft(dArr3, 0, dArr5, 0, i104);
        FalconFFT.poly_mul_fft(dArr4, 0, dArr5, 0, i104);
        FalconFFT.poly_sub(dArr, 0, dArr3, 0, i104);
        FalconFFT.poly_sub(dArr2, 0, dArr4, 0, i104);
        FalconFFT.iFFT(dArr, 0, i104);
        FalconFFT.iFFT(dArr2, 0, i104);
        for (int i107 = 0; i107 < i103; i107++) {
            iArr[i107] = (int) FPREngine.fpr_rint(dArr[i107]);
            iArr[i103 + i107] = (int) FPREngine.fpr_rint(dArr2[i107]);
        }
        return 1;
    }

    private static int solve_NTRU_deepest(int i10, byte[] bArr, byte[] bArr2, int[] iArr) {
        int i11 = MAX_BL_SMALL[i10];
        int i12 = i11 + i11;
        int i13 = i12 + i11;
        int i14 = i13 + i11;
        make_fg(iArr, i12, bArr, bArr2, i10, i10, 0);
        zint_rebuild_CRT(iArr, i12, i11, i11, 2, 0, iArr, i14);
        return (zint_bezout(iArr, i11, iArr, 0, iArr, i12, iArr, i13, i11, iArr, i14) != 0 && zint_mul_small(iArr, 0, i11, 12289) == 0 && zint_mul_small(iArr, i11, i11, 12289) == 0) ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0379, code lost:
    
        return r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0400 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int solve_NTRU_intermediate(int i10, byte[] bArr, byte[] bArr2, int i11, int[] iArr) {
        double d10;
        int[] iArr2;
        double[] dArr;
        double[] dArr2;
        double[] dArr3;
        double[] dArr4;
        double[] dArr5;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int[] iArr3;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int[] iArr4 = iArr;
        int i27 = i10 - i11;
        int i28 = 1 << i27;
        int i29 = i28 >> 1;
        int[] iArr5 = MAX_BL_SMALL;
        int i30 = iArr5[i11];
        int i31 = iArr5[i11 + 1];
        int i32 = MAX_BL_LARGE[i11];
        int i33 = i31 * i29;
        int i34 = i33 + i33;
        int i35 = i27;
        make_fg(iArr, i34, bArr, bArr2, i10, i11, 1);
        int i36 = i28 * i32;
        int i37 = i36 + i36;
        int i38 = i28 * i30;
        System.arraycopy(iArr4, i34, iArr4, i37, i38 + i38);
        int i39 = i37 + i38;
        int i40 = i39 + i38;
        System.arraycopy(iArr4, 0, iArr4, i40, i33 + i33);
        int i41 = i33 + i40;
        int i42 = 0;
        while (i42 < i32) {
            int i43 = FalconSmallPrimeList.PRIMES[i42].f12302p;
            int iModp_ninv31 = modp_ninv31(i43);
            int iModp_R2 = modp_R2(i43, iModp_ninv31);
            int iModp_Rx = modp_Rx(i31, i43, iModp_ninv31, iModp_R2);
            int i44 = i36 + i42;
            int i45 = i42;
            int i46 = i41;
            int i47 = i40;
            int i48 = 0;
            while (i48 < i29) {
                int i49 = iModp_R2;
                int i50 = iModp_ninv31;
                iArr4[i45] = zint_mod_small_signed(iArr, i47, i31, i43, i50, i49, iModp_Rx);
                iArr4[i44] = zint_mod_small_signed(iArr, i46, i31, i43, i50, i49, iModp_Rx);
                i48++;
                i47 += i31;
                i46 += i31;
                i45 += i32;
                i44 += i32;
                iModp_R2 = i49;
                iModp_ninv31 = i50;
                i42 = i42;
                i37 = i37;
            }
            i42++;
        }
        int i51 = i37;
        int i52 = 0;
        while (i52 < i32) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int i53 = falconSmallPrimeArr[i52].f12302p;
            int iModp_ninv312 = modp_ninv31(i53);
            int iModp_R22 = modp_R2(i53, iModp_ninv312);
            if (i52 == i30) {
                i14 = i32;
                i15 = i30;
                int i54 = i28;
                i17 = i40;
                i18 = i35;
                i16 = i29;
                iArr3 = iArr4;
                zint_rebuild_CRT(iArr, i51, i30, i30, i28, 1, iArr, i17);
                zint_rebuild_CRT(iArr, i39, i15, i30, i54, 1, iArr, i17);
                i19 = i54;
            } else {
                i14 = i32;
                i15 = i30;
                i16 = i29;
                i17 = i40;
                iArr3 = iArr4;
                i18 = i35;
                i19 = i28;
            }
            int i55 = i17 + i19;
            int i56 = i55 + i19;
            int i57 = i56 + i19;
            int i58 = falconSmallPrimeArr[i52].f12301g;
            int i59 = i19;
            modp_mkgm2(iArr, i17, iArr, i55, i18, i58, i53, iModp_ninv312);
            if (i52 < i15) {
                int i60 = i51 + i52;
                int i61 = i39 + i52;
                int i62 = i60;
                int i63 = i61;
                int i64 = 0;
                while (i64 < i59) {
                    iArr3[i56 + i64] = iArr3[i62];
                    iArr3[i57 + i64] = iArr3[i63];
                    i64++;
                    i62 += i15;
                    i63 += i15;
                }
                int i65 = i15;
                int i66 = i18;
                modp_iNTT2_ext(iArr, i60, i65, iArr, i55, i66, i53, iModp_ninv312);
                modp_iNTT2_ext(iArr, i61, i65, iArr, i55, i66, i53, iModp_ninv312);
                i20 = i59;
                i21 = i18;
                i22 = i15;
                i23 = iModp_R22;
                i24 = iModp_ninv312;
                i25 = i53;
                i26 = i52;
            } else {
                int iModp_Rx2 = modp_Rx(i15, i53, iModp_ninv312, iModp_R22);
                int i67 = i39;
                int i68 = i51;
                int i69 = 0;
                while (i69 < i59) {
                    int i70 = i15;
                    int i71 = iModp_R22;
                    int i72 = i53;
                    iArr3[i56 + i69] = zint_mod_small_signed(iArr, i68, i15, i53, iModp_ninv312, i71, iModp_Rx2);
                    iArr3[i57 + i69] = zint_mod_small_signed(iArr, i67, i15, i72, iModp_ninv312, i71, iModp_Rx2);
                    i69++;
                    i68 += i70;
                    i67 += i70;
                    iModp_R22 = i71;
                    i18 = i18;
                    i59 = i59;
                    i53 = i72;
                    i52 = i52;
                }
                i20 = i59;
                i21 = i18;
                i22 = i15;
                i23 = iModp_R22;
                i24 = iModp_ninv312;
                i25 = i53;
                i26 = i52;
                int i73 = i17;
                modp_NTT2(iArr, i56, iArr, i73, i21, i53, i24);
                modp_NTT2(iArr, i57, iArr, i73, i21, i53, i24);
            }
            int i74 = i57 + i20;
            int i75 = i74 + i16;
            int i76 = i36 + i26;
            int i77 = i16;
            int i78 = i26;
            int i79 = i76;
            int i80 = 0;
            while (i80 < i77) {
                iArr3[i74 + i80] = iArr3[i78];
                iArr3[i75 + i80] = iArr3[i79];
                i80++;
                i78 += i14;
                i79 += i14;
            }
            int i81 = i21 - 1;
            int i82 = i17;
            int i83 = i25;
            int i84 = i24;
            modp_NTT2(iArr, i74, iArr, i82, i81, i83, i84);
            modp_NTT2(iArr, i75, iArr, i82, i81, i83, i84);
            int i85 = i26;
            int i86 = i76;
            int i87 = 0;
            while (i87 < i77) {
                int i88 = i87 << 1;
                int i89 = i56 + i88;
                int i90 = iArr3[i89];
                int i91 = iArr3[i89 + 1];
                int i92 = i57 + i88;
                int i93 = iArr3[i92];
                int i94 = iArr3[i92 + 1];
                int i95 = iArr3[i74 + i87];
                int i96 = i74;
                int i97 = i25;
                int i98 = i23;
                int i99 = i20;
                int i100 = i24;
                int iModp_montymul = modp_montymul(i95, i98, i97, i100);
                int i101 = i77;
                int iModp_montymul2 = modp_montymul(iArr3[i75 + i87], i98, i97, i100);
                iArr3[i85] = modp_montymul(i94, iModp_montymul, i97, i100);
                iArr3[i85 + i14] = modp_montymul(i93, iModp_montymul, i97, i100);
                iArr3[i86] = modp_montymul(i91, iModp_montymul2, i97, i100);
                iArr3[i86 + i14] = modp_montymul(i90, iModp_montymul2, i97, i100);
                i87++;
                int i102 = i14 << 1;
                i85 += i102;
                i86 += i102;
                i25 = i97;
                i77 = i101;
                i20 = i99;
                i23 = i98;
                i74 = i96;
            }
            int i103 = i20;
            int i104 = i25;
            int i105 = i24;
            i32 = i14;
            int i106 = i22;
            int i107 = i21;
            modp_iNTT2_ext(iArr, i26, i32, iArr, i55, i21, i104, i105);
            modp_iNTT2_ext(iArr, i76, i32, iArr, i55, i107, i104, i105);
            i29 = i77;
            i28 = i103;
            i35 = i107;
            i30 = i106;
            iArr4 = iArr3;
            i40 = i17;
            i52 = i26 + 1;
        }
        int i108 = i32;
        int i109 = i30;
        int i110 = i29;
        int i111 = i28;
        int i112 = i40;
        int[] iArr6 = iArr4;
        int i113 = i35;
        int i114 = 0;
        zint_rebuild_CRT(iArr, 0, i32, i108, i111, 1, iArr, i112);
        zint_rebuild_CRT(iArr, i36, i32, i108, i111, 1, iArr, i112);
        double[] dArr6 = new double[i111];
        double[] dArr7 = new double[i111];
        double[] dArr8 = new double[i111];
        double[] dArr9 = new double[i111];
        double[] dArr10 = new double[i110];
        int[] iArr7 = new int[i111];
        int iMin = Math.min(i109, 10);
        int i115 = i111;
        poly_big_to_fp(dArr8, iArr, (i51 + i109) - iMin, iMin, i109, i113);
        poly_big_to_fp(dArr9, iArr, (i39 + i109) - iMin, iMin, i109, i113);
        int i116 = (i109 - iMin) * 31;
        int i117 = i11;
        int i118 = bitlength_avg[i117];
        int i119 = bitlength_std[i117];
        int i120 = i118 - (i119 * 6);
        int i121 = (i119 * 6) + i118;
        FalconFFT.FFT(dArr8, 0, i113);
        FalconFFT.FFT(dArr9, 0, i113);
        int i122 = 0;
        int i123 = i109;
        FalconFFT.poly_invnorm2_fft(dArr10, 0, dArr8, 0, dArr9, 0, i113);
        FalconFFT.poly_adj_fft(dArr8, 0, i113);
        FalconFFT.poly_adj_fft(dArr9, 0, i113);
        int i124 = i108 * 31;
        int i125 = i124;
        int i126 = i124 - i120;
        int i127 = i108;
        int i128 = 10;
        loop7: while (true) {
            int iMin2 = Math.min(i127, i128);
            int i129 = i127;
            int i130 = i125;
            poly_big_to_fp(dArr6, iArr, i127 - iMin2, iMin2, i108, i113);
            poly_big_to_fp(dArr7, iArr, (i36 + i129) - iMin2, iMin2, i108, i113);
            FalconFFT.FFT(dArr6, i122, i113);
            FalconFFT.FFT(dArr7, i122, i113);
            FalconFFT.poly_mul_fft(dArr6, i122, dArr8, i122, i113);
            FalconFFT.poly_mul_fft(dArr7, i122, dArr9, i122, i113);
            FalconFFT.poly_add(dArr7, i122, dArr6, i122, i113);
            FalconFFT.poly_mul_autoadj_fft(dArr7, i122, dArr10, i122, i113);
            FalconFFT.iFFT(dArr7, i122, i113);
            int i131 = (i126 - ((i127 - iMin2) * 31)) + i116;
            if (i131 < 0) {
                i131 = -i131;
                d10 = 2.0d;
            } else {
                d10 = 0.5d;
            }
            double d11 = 1.0d;
            while (i131 != 0) {
                if ((i131 & 1) != 0) {
                    d11 *= d10;
                }
                i131 >>= 1;
                d10 *= d10;
            }
            int i132 = i115;
            for (int i133 = 0; i133 < i132; i133++) {
                double d12 = dArr7[i133] * d11;
                if (-2.147483647E9d >= d12 || d12 >= 2.147483647E9d) {
                    break loop7;
                }
                iArr7[i133] = (int) FPREngine.fpr_rint(d12);
            }
            int i134 = i126 / 31;
            int i135 = i126 % 31;
            if (i117 <= 4) {
                i12 = 0;
                iArr2 = iArr7;
                dArr = dArr10;
                dArr2 = dArr9;
                dArr3 = dArr8;
                dArr4 = dArr7;
                int i136 = i123;
                dArr5 = dArr6;
                int i137 = i123;
                poly_sub_scaled_ntt(iArr, 0, i129, i108, iArr, i51, i136, i137, iArr2, i134, i135, i113, iArr, i112);
                poly_sub_scaled_ntt(iArr, i36, i129, i108, iArr, i39, i136, i137, iArr2, i134, i135, i113, iArr, i112);
            } else {
                iArr2 = iArr7;
                dArr = dArr10;
                dArr2 = dArr9;
                dArr3 = dArr8;
                dArr4 = dArr7;
                dArr5 = dArr6;
                i12 = 0;
                int i138 = i123;
                int i139 = i123;
                poly_sub_scaled(iArr, 0, i129, i108, iArr, i51, i138, i139, iArr2, i134, i135, i113);
                poly_sub_scaled(iArr, i36, i129, i108, iArr, i39, i138, i139, iArr2, i134, i135, i113);
            }
            int i140 = i126 + i121;
            int i141 = i140 + 10;
            if (i141 < i130) {
                if (i129 * 31 >= i140 + 41) {
                    i13 = i129 - 1;
                }
                int i142 = i123;
                if (i126 > 0) {
                    if (i13 < i142) {
                        int i143 = 0;
                        while (i143 < i132) {
                            int i144 = (-(iArr6[(i114 + i13) - 1] >>> 30)) >>> 1;
                            for (int i145 = i13; i145 < i142; i145++) {
                                iArr6[i114 + i145] = i144;
                            }
                            int i146 = (-(iArr6[(i36 + i13) - 1] >>> 30)) >>> 1;
                            for (int i147 = i13; i147 < i142; i147++) {
                                iArr6[i36 + i147] = i146;
                            }
                            i143++;
                            i114 += i108;
                            i36 += i108;
                        }
                    }
                    int i148 = 0;
                    int i149 = 0;
                    while (i149 < (i132 << 1)) {
                        System.arraycopy(iArr6, i12, iArr6, i148, i142);
                        i149++;
                        i148 += i142;
                        i12 += i108;
                    }
                    return 1;
                }
                int i150 = i126 - 25;
                i126 = i150 < 0 ? 0 : i150;
                i127 = i13;
                iArr7 = iArr2;
                i123 = i142;
                dArr10 = dArr;
                dArr9 = dArr2;
                dArr8 = dArr3;
                dArr7 = dArr4;
                dArr6 = dArr5;
                i128 = 10;
                i122 = 0;
                i117 = i11;
                i115 = i132;
                i125 = i141;
            } else {
                i141 = i130;
            }
            i13 = i129;
            int i1422 = i123;
            if (i126 > 0) {
            }
        }
    }

    private static long toUnsignedLong(int i10) {
        return i10 & 4294967295L;
    }

    private static void zint_add_mul_small(int[] iArr, int i10, int[] iArr2, int i11, int i12, int i13) {
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i10 + i15;
            long unsignedLong = (toUnsignedLong(iArr2[i11 + i15]) * toUnsignedLong(i13)) + toUnsignedLong(iArr[i16]) + toUnsignedLong(i14);
            iArr[i16] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i14 = (int) (unsignedLong >>> 31);
        }
        iArr[i10 + i12] = i14;
    }

    private static void zint_add_scaled_mul_small(int[] iArr, int i10, int i11, int[] iArr2, int i12, int i13, int i14, int i15, int i16) {
        if (i13 == 0) {
            return;
        }
        int i17 = (-(iArr2[(i12 + i13) - 1] >>> 30)) >>> 1;
        int i18 = 0;
        int i19 = i15;
        int i20 = 0;
        while (i19 < i11) {
            int i21 = i19 - i15;
            int i22 = i21 < i13 ? iArr2[i12 + i21] : i17;
            int i23 = i10 + i19;
            long unsignedLong = (toUnsignedLong(i18 | ((i22 << i16) & Integer.MAX_VALUE)) * i14) + toUnsignedLong(iArr[i23]) + i20;
            iArr[i23] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i20 = (int) (unsignedLong >>> 31);
            i19++;
            i18 = i22 >>> (31 - i16);
        }
    }

    private static int zint_bezout(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12, int[] iArr4, int i13, int i14, int[] iArr5, int i15) {
        int i16 = i14;
        int[] iArr6 = iArr5;
        if (i16 == 0) {
            return 0;
        }
        int i17 = i15 + i16;
        int i18 = i17 + i16;
        int i19 = i18 + i16;
        int iModp_ninv31 = modp_ninv31(iArr3[i12]);
        int iModp_ninv312 = modp_ninv31(iArr4[i13]);
        System.arraycopy(iArr3, i12, iArr6, i18, i16);
        System.arraycopy(iArr4, i13, iArr6, i19, i16);
        iArr[i10] = 1;
        iArr2[i11] = 0;
        for (int i20 = 1; i20 < i16; i20++) {
            iArr[i10 + i20] = 0;
            iArr2[i11 + i20] = 0;
        }
        System.arraycopy(iArr4, i13, iArr6, i15, i16);
        System.arraycopy(iArr3, i12, iArr6, i17, i16);
        iArr6[i17] = iArr6[i17] - 1;
        int i21 = 30;
        int i22 = (i16 * 62) + 30;
        while (true) {
            if (i22 < i21) {
                break;
            }
            int i23 = i16;
            int i24 = 0;
            int i25 = 0;
            int i26 = -1;
            int i27 = 0;
            int i28 = 0;
            int i29 = -1;
            while (true) {
                int i30 = i23 - 1;
                if (i23 <= 0) {
                    break;
                }
                int i31 = iArr6[i18 + i30];
                int i32 = iArr6[i19 + i30];
                i25 ^= (i25 ^ i31) & i29;
                i24 ^= (i24 ^ i31) & i26;
                i28 ^= (i28 ^ i32) & i29;
                i27 ^= (i27 ^ i32) & i26;
                i26 = i29;
                i29 &= (((i31 | i32) + Integer.MAX_VALUE) >>> 31) - 1;
                i23 = i30;
            }
            int i33 = (i25 & i26) | i24;
            int i34 = i26 ^ (-1);
            int i35 = i27 | (i28 & i26);
            long unsignedLong = (toUnsignedLong(i25 & i34) << 31) + toUnsignedLong(i33);
            long unsignedLong2 = (toUnsignedLong(i28 & i34) << 31) + toUnsignedLong(i35);
            int i36 = iArr6[i18];
            int i37 = iArr6[i19];
            long j10 = 0;
            long j11 = 0;
            long j12 = 1;
            long j13 = 1;
            int i38 = 0;
            for (int i39 = 31; i38 < i39; i39 = 31) {
                long j14 = unsignedLong2 - unsignedLong;
                int i40 = (int) ((j14 ^ ((unsignedLong ^ unsignedLong2) & (unsignedLong ^ j14))) >>> 63);
                int i41 = (i36 >> i38) & 1;
                int i42 = i41 & (i37 >> i38) & 1;
                int i43 = i22;
                int i44 = i42 & i40;
                int i45 = i42 & (i40 ^ (-1));
                int i46 = (i41 ^ 1) | i44;
                int i47 = i36 - (i37 & (-i44));
                long j15 = unsignedLong - ((-toUnsignedLong(i44)) & unsignedLong2);
                long j16 = -i44;
                long j17 = j12 - (j11 & j16);
                long j18 = j10 - (j13 & j16);
                int i48 = i37 - (i47 & (-i45));
                long j19 = unsignedLong2 - (j15 & (-toUnsignedLong(i45)));
                long j20 = -i45;
                long j21 = j11 - (j17 & j20);
                long j22 = j13 - (j18 & j20);
                i36 = i47 + (i47 & (i46 - 1));
                long j23 = i46;
                long j24 = j23 - 1;
                j12 = j17 + (j17 & j24);
                j10 = j18 + (j18 & j24);
                unsignedLong = j15 ^ ((j15 ^ (j15 >> 1)) & (-toUnsignedLong(i46)));
                i37 = i48 + (i48 & (-i46));
                long j25 = -j23;
                j11 = j21 + (j21 & j25);
                j13 = j22 + (j22 & j25);
                unsignedLong2 = j19 ^ ((toUnsignedLong(i46) - 1) & ((j19 >> 1) ^ j19));
                i38++;
                i22 = i43;
                i17 = i17;
            }
            int i49 = i17;
            int iZint_co_reduce = zint_co_reduce(iArr5, i18, iArr5, i19, i14, j12, j10, j11, j13);
            long j26 = -(iZint_co_reduce & 1);
            long j27 = j12 - ((j12 + j12) & j26);
            long j28 = j10 - ((j10 + j10) & j26);
            long j29 = -(iZint_co_reduce >>> 1);
            long j30 = j11 - ((j11 + j11) & j29);
            long j31 = j13 - ((j13 + j13) & j29);
            zint_co_reduce_mod(iArr, i10, iArr5, i15, iArr4, i13, i14, iModp_ninv312, j27, j28, j30, j31);
            zint_co_reduce_mod(iArr2, i11, iArr5, i49, iArr3, i12, i14, iModp_ninv31, j27, j28, j30, j31);
            i22 -= 30;
            i16 = i14;
            iArr6 = iArr5;
            i19 = i19;
            i18 = i18;
            i17 = i49;
            i21 = 30;
        }
        int i50 = i18;
        int i51 = iArr5[i50] ^ 1;
        for (int i52 = 1; i52 < i14; i52++) {
            i51 |= iArr5[i50 + i52];
        }
        return (1 - ((i51 | (-i51)) >>> 31)) & iArr3[i12] & iArr4[i13];
    }

    private static int zint_co_reduce(int[] iArr, int i10, int[] iArr2, int i11, int i12, long j10, long j11, long j12, long j13) {
        long j14 = 0;
        int i13 = 0;
        long j15 = 0;
        while (i13 < i12) {
            int i14 = i10 + i13;
            int i15 = i11 + i13;
            long j16 = iArr[i14];
            long j17 = iArr2[i15];
            long jC = z.c(j17, j11, j16 * j10, j15);
            int i16 = i13;
            long jC2 = z.c(j17, j13, j16 * j12, j14);
            if (i16 > 0) {
                iArr[i14 - 1] = ((int) jC) & Integer.MAX_VALUE;
                iArr2[i15 - 1] = ((int) jC2) & Integer.MAX_VALUE;
            }
            j14 = jC2 >> 31;
            i13 = i16 + 1;
            j15 = jC >> 31;
        }
        long j18 = j14;
        iArr[(i10 + i12) - 1] = (int) j15;
        iArr2[(i11 + i12) - 1] = (int) j18;
        int i17 = (int) (j15 >>> 63);
        int i18 = (int) (j18 >>> 63);
        zint_negate(iArr, i10, i12, i17);
        zint_negate(iArr2, i11, i12, i18);
        return (i18 << 1) | i17;
    }

    private static void zint_co_reduce_mod(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12, int i13, int i14, long j10, long j11, long j12, long j13) {
        long j14 = j10;
        long j15 = j11;
        int i15 = iArr[i10];
        int i16 = iArr2[i11];
        int i17 = (((((int) j15) * i16) + (((int) j14) * i15)) * i14) & Integer.MAX_VALUE;
        int i18 = (((i16 * ((int) j13)) + (i15 * ((int) j12))) * i14) & Integer.MAX_VALUE;
        long j16 = 0;
        int i19 = 0;
        long j17 = 0;
        while (i19 < i13) {
            int i20 = i10 + i19;
            int i21 = i11 + i19;
            long j18 = iArr[i20];
            long j19 = j18 * j14;
            long j20 = iArr2[i21];
            int i22 = i12 + i19;
            long jC = z.c(iArr3[i22], toUnsignedLong(i17), (j20 * j15) + j19, j16);
            long jC2 = z.c(iArr3[i22], toUnsignedLong(i18), (j20 * j13) + (j18 * j12), j17);
            if (i19 > 0) {
                iArr[i20 - 1] = ((int) jC) & Integer.MAX_VALUE;
                iArr2[i21 - 1] = ((int) jC2) & Integer.MAX_VALUE;
            }
            j16 = jC >> 31;
            j17 = jC2 >> 31;
            i19++;
            j14 = j10;
            j15 = j11;
        }
        iArr[(i10 + i13) - 1] = (int) j16;
        long j21 = j17;
        iArr2[(i11 + i13) - 1] = (int) j21;
        zint_finish_mod(iArr, i10, i13, iArr3, i12, (int) (j16 >>> 63));
        zint_finish_mod(iArr2, i11, i13, iArr3, i12, (int) (j21 >>> 63));
    }

    private static void zint_finish_mod(int[] iArr, int i10, int i11, int[] iArr2, int i12, int i13) {
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            i14 = ((iArr[i10 + i15] - iArr2[i12 + i15]) - i14) >>> 31;
        }
        int i16 = (-i13) >>> 1;
        int i17 = -((1 - i14) | i13);
        for (int i18 = 0; i18 < i11; i18++) {
            int i19 = i10 + i18;
            int i20 = (iArr[i19] - ((iArr2[i12 + i18] ^ i16) & i17)) - i13;
            iArr[i19] = Integer.MAX_VALUE & i20;
            i13 = i20 >>> 31;
        }
    }

    private static int zint_mod_small_signed(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i11 == 0) {
            return 0;
        }
        return modp_sub(zint_mod_small_unsigned(iArr, i10, i11, i12, i13, i14), (-(iArr[(i10 + i11) - 1] >>> 30)) & i15, i12);
    }

    private static int zint_mod_small_unsigned(int[] iArr, int i10, int i11, int i12, int i13, int i14) {
        int iModp_add = 0;
        while (true) {
            int i15 = i11 - 1;
            if (i11 <= 0) {
                return iModp_add;
            }
            int iModp_montymul = modp_montymul(iModp_add, i14, i12, i13);
            int i16 = iArr[i10 + i15] - i12;
            iModp_add = modp_add(iModp_montymul, i16 + ((-(i16 >>> 31)) & i12), i12);
            i11 = i15;
        }
    }

    private static int zint_mul_small(int[] iArr, int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i10 + i14;
            long unsignedLong = (toUnsignedLong(iArr[i15]) * toUnsignedLong(i12)) + i13;
            iArr[i15] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i13 = (int) (unsignedLong >> 31);
        }
        return i13;
    }

    private static void zint_negate(int[] iArr, int i10, int i11, int i12) {
        int i13 = (-i12) >>> 1;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i10 + i14;
            int i16 = (iArr[i15] ^ i13) + i12;
            iArr[i15] = Integer.MAX_VALUE & i16;
            i12 = i16 >>> 31;
        }
    }

    private static void zint_norm_zero(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        int i13 = 0;
        int i14 = i12;
        int i15 = 0;
        while (true) {
            int i16 = i14 - 1;
            if (i14 <= 0) {
                zint_sub(iArr, i10, iArr2, i11, i12, i13 >>> 31);
                return;
            }
            int i17 = iArr[i10 + i16];
            int i18 = iArr2[i11 + i16];
            int i19 = ((i15 << 30) | (i18 >>> 1)) - i17;
            i13 |= ((-(i19 >>> 31)) | ((-i19) >>> 31)) & ((i13 & 1) - 1);
            i14 = i16;
            i15 = i18 & 1;
        }
    }

    private static int zint_one_to_plain(int[] iArr, int i10) {
        int i11 = iArr[i10];
        return i11 | ((1073741824 & i11) << 1);
    }

    private static void zint_rebuild_CRT(int[] iArr, int i10, int i11, int i12, int i13, int i14, int[] iArr2, int i15) {
        iArr2[i15] = FalconSmallPrimeList.PRIMES[0].f12302p;
        for (int i16 = 1; i16 < i11; i16++) {
            FalconSmallPrime falconSmallPrime = FalconSmallPrimeList.PRIMES[i16];
            int i17 = falconSmallPrime.f12302p;
            int i18 = falconSmallPrime.f12303s;
            int iModp_ninv31 = modp_ninv31(i17);
            int iModp_R2 = modp_R2(i17, iModp_ninv31);
            int i19 = i10;
            int i20 = 0;
            while (i20 < i13) {
                int i21 = i19;
                int i22 = i20;
                zint_add_mul_small(iArr, i21, iArr2, i15, i16, modp_montymul(i18, modp_sub(iArr[i19 + i16], zint_mod_small_unsigned(iArr, i21, i16, i17, iModp_ninv31, iModp_R2), i17), i17, iModp_ninv31));
                i20 = i22 + 1;
                i19 += i12;
            }
            iArr2[i15 + i16] = zint_mul_small(iArr2, i15, i16, i17);
        }
        if (i14 != 0) {
            int i23 = i10;
            int i24 = 0;
            while (i24 < i13) {
                zint_norm_zero(iArr, i23, iArr2, i15, i11);
                i24++;
                i23 += i12;
            }
        }
    }

    private static void zint_sub(int[] iArr, int i10, int[] iArr2, int i11, int i12, int i13) {
        int i14 = -i13;
        int i15 = 0;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = i10 + i16;
            int i18 = iArr[i17];
            int i19 = (i18 - iArr2[i11 + i16]) - i15;
            i15 = i19 >>> 31;
            iArr[i17] = i18 ^ (((i19 & Integer.MAX_VALUE) ^ i18) & i14);
        }
    }

    private static void zint_sub_scaled(int[] iArr, int i10, int i11, int[] iArr2, int i12, int i13, int i14, int i15) {
        if (i13 == 0) {
            return;
        }
        int i16 = (-(iArr2[(i12 + i13) - 1] >>> 30)) >>> 1;
        int i17 = 0;
        int i18 = i14;
        int i19 = 0;
        while (i18 < i11) {
            int i20 = i18 - i14;
            int i21 = i20 < i13 ? iArr2[i20 + i12] : i16;
            int i22 = i10 + i18;
            int i23 = (iArr[i22] - (i17 | ((i21 << i15) & Integer.MAX_VALUE))) - i19;
            iArr[i22] = i23 & Integer.MAX_VALUE;
            i19 = i23 >>> 31;
            i18++;
            i17 = i21 >>> (31 - i15);
        }
    }
}
