package k2;

import android.opengl.GLES20;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: i, reason: collision with root package name */
    public static final float[] f10033i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f10034j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: k, reason: collision with root package name */
    public static final float[] f10035k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public int f10036a;

    /* renamed from: b, reason: collision with root package name */
    public a9.a f10037b;

    /* renamed from: c, reason: collision with root package name */
    public g3.j f10038c;

    /* renamed from: d, reason: collision with root package name */
    public int f10039d;

    /* renamed from: e, reason: collision with root package name */
    public int f10040e;

    /* renamed from: f, reason: collision with root package name */
    public int f10041f;

    /* renamed from: g, reason: collision with root package name */
    public int f10042g;

    /* renamed from: h, reason: collision with root package name */
    public int f10043h;

    public static boolean b(f fVar) {
        a9.a[] aVarArr = fVar.f10029a.f10028a;
        if (aVarArr.length != 1 || aVarArr[0].f471b != 0) {
            return false;
        }
        a9.a[] aVarArr2 = fVar.f10030b.f10028a;
        return aVarArr2.length == 1 && aVarArr2[0].f471b == 0;
    }

    public final void a() {
        try {
            g3.j jVar = new g3.j("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f10038c = jVar;
            this.f10039d = GLES20.glGetUniformLocation(jVar.f6034a, "uMvpMatrix");
            this.f10040e = GLES20.glGetUniformLocation(this.f10038c.f6034a, "uTexMatrix");
            this.f10041f = this.f10038c.h("aPosition");
            this.f10042g = this.f10038c.h("aTexCoords");
            this.f10043h = GLES20.glGetUniformLocation(this.f10038c.f6034a, "uTexture");
        } catch (u1.h e7) {
            u1.a.g("Failed to initialize the program", e7);
        }
    }
}
