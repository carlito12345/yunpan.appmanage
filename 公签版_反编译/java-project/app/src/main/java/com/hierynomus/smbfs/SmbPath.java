package com.hierynomus.smbfs;

import androidx.media3.exoplayer.video.i;
import j$.util.Objects;
import j$.util.stream.IntStream;
import java.io.File;
import java.net.URI;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.ProviderMismatchException;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class SmbPath implements Path {
    public static final char SEPARATOR = '\\';
    private final List<String> elements;
    private final SmbFileSystem fileSystem;
    private final SmbPath root;

    private SmbPath(SmbFileSystem smbFileSystem, SmbPath smbPath, List<String> list) {
        this.fileSystem = smbFileSystem;
        this.root = smbPath;
        this.elements = list;
    }

    private boolean differentFileSystem(Path path) {
        return this.fileSystem != path.getFileSystem();
    }

    private boolean isChild() {
        return this.elements != null;
    }

    private boolean isRoot() {
        return this.elements == null;
    }

    private int numberOfMatchingElements(SmbPath smbPath) {
        if (getRoot() != smbPath.getRoot()) {
            return -1;
        }
        int iMin = Math.min(getNameCount(), smbPath.getNameCount());
        for (int i10 = 0; i10 < iMin; i10++) {
            if (!this.elements.get(i10).equals(smbPath.elements.get(i10))) {
                return i10;
            }
        }
        return iMin;
    }

    public static SmbPath of(SmbFileSystem smbFileSystem, SmbPath smbPath, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().isEmpty()) {
                throw new IllegalArgumentException();
            }
        }
        return new SmbPath(smbFileSystem, smbPath, list);
    }

    public static SmbPath parse(SmbFileSystem smbFileSystem, SmbPath smbPath, String str) {
        return of(smbFileSystem, smbPath, new ArrayList(Arrays.asList(str.split("\\\\"))));
    }

    public static SmbPath requireSmbPath(Path path) {
        Objects.requireNonNull(path);
        if (path instanceof SmbPath) {
            return (SmbPath) path;
        }
        throw new ProviderMismatchException();
    }

    public static SmbPath root(SmbFileSystem smbFileSystem) {
        return new SmbPath(smbFileSystem, null, null);
    }

    private SmbPath withNoRoot(List<String> list) {
        return of(this.fileSystem, (SmbPath) null, list);
    }

    private SmbPath withSameRoot(List<String> list) {
        return of(this.fileSystem, this.root, list);
    }

    private SmbPath withThisRoot(List<String> list) {
        return of(this.fileSystem, this, list);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Path path) {
        return compareTo2(i.g(path));
    }

    @Override // java.nio.file.Path
    public boolean endsWith(Path path) {
        SmbPath smbPathRequireSmbPath;
        int nameCount;
        int nameCount2;
        SmbPath root;
        if (differentFileSystem(path) || (nameCount2 = (smbPathRequireSmbPath = requireSmbPath(path)).getNameCount()) > (nameCount = getNameCount())) {
            return false;
        }
        for (int i10 = 1; i10 <= nameCount2; i10++) {
            if (!this.elements.get(nameCount - i10).equals(smbPathRequireSmbPath.elements.get(nameCount2 - i10))) {
                return false;
            }
        }
        return nameCount2 != nameCount || (root = smbPathRequireSmbPath.getRoot()) == null || root == getRoot();
    }

    @Override // java.nio.file.Path
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SmbPath)) {
            return false;
        }
        SmbPath smbPath = (SmbPath) obj;
        return Objects.equals(this.fileSystem, smbPath.fileSystem) && Objects.equals(this.root, smbPath.root) && Objects.equals(this.elements, smbPath.elements);
    }

    @Override // java.nio.file.Path
    public int getNameCount() {
        if (isChild()) {
            return this.elements.size();
        }
        return 0;
    }

    @Override // java.nio.file.Path
    public int hashCode() {
        return Objects.hash(this.fileSystem, this.root, this.elements);
    }

    @Override // java.nio.file.Path
    public boolean isAbsolute() {
        return this.root != null || isRoot();
    }

    @Override // java.nio.file.Path, java.lang.Iterable
    public Iterator<Path> iterator() {
        int nameCount = getNameCount();
        return nameCount == 0 ? Collections.emptyList().iterator() : IntStream.CC.range(0, nameCount).mapToObj(new a(0, this)).iterator();
    }

    @Override // java.nio.file.Path, java.nio.file.Watchable
    public WatchKey register(WatchService watchService, WatchEvent.Kind<?>... kindArr) {
        return register(watchService, kindArr, new WatchEvent.Modifier[0]);
    }

    @Override // java.nio.file.Path
    public boolean startsWith(Path path) {
        int nameCount;
        if (differentFileSystem(path)) {
            return false;
        }
        SmbPath smbPathRequireSmbPath = requireSmbPath(path);
        return getRoot() == smbPathRequireSmbPath.getRoot() && (nameCount = smbPathRequireSmbPath.getNameCount()) <= getNameCount() && numberOfMatchingElements(smbPathRequireSmbPath) == nameCount;
    }

    @Override // java.nio.file.Path
    public File toFile() {
        throw new UnsupportedOperationException("Path not associated with default file system");
    }

    @Override // java.nio.file.Path
    public String toString() {
        if (this.elements == null) {
            return "\\";
        }
        StringBuilder sb2 = new StringBuilder();
        if (isAbsolute()) {
            sb2.append(SEPARATOR);
        }
        for (int i10 = 0; i10 < this.elements.size(); i10++) {
            if (i10 > 0) {
                sb2.append(SEPARATOR);
            }
            sb2.append(this.elements.get(i10));
        }
        return sb2.toString();
    }

    @Override // java.nio.file.Path
    public URI toUri() {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.Path
    /* renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(Path path) {
        return toString().toLowerCase().compareTo(path.toString().toLowerCase());
    }

    @Override // java.nio.file.Path
    public SmbPath getFileName() {
        int nameCount = getNameCount();
        if (nameCount > 0) {
            return withNoRoot(this.elements.subList(nameCount - 1, nameCount));
        }
        return null;
    }

    @Override // java.nio.file.Path
    public SmbFileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // java.nio.file.Path
    public SmbPath getName(int i10) {
        if (isRoot()) {
            throw new IllegalArgumentException();
        }
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i10 < this.elements.size()) {
            return withNoRoot(this.elements.subList(i10, i10 + 1));
        }
        throw new IllegalArgumentException();
    }

    @Override // java.nio.file.Path
    public SmbPath getParent() {
        int nameCount = getNameCount();
        return nameCount > 1 ? withSameRoot(this.elements.subList(0, nameCount - 1)) : this.root;
    }

    @Override // java.nio.file.Path
    public SmbPath getRoot() {
        return isRoot() ? this : this.root;
    }

    @Override // java.nio.file.Path
    public SmbPath normalize() {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.Path, java.nio.file.Watchable
    public WatchKey register(WatchService watchService, WatchEvent.Kind<?>[] kindArr, WatchEvent.Modifier... modifierArr) {
        if (watchService instanceof SmbWatchService) {
            return ((SmbWatchService) watchService).register(this);
        }
        throw new ProviderMismatchException(watchService.getClass().getName());
    }

    @Override // java.nio.file.Path
    public SmbPath relativize(Path path) {
        SmbPath smbPathRequireSmbPath = requireSmbPath(path);
        int iNumberOfMatchingElements = numberOfMatchingElements(smbPathRequireSmbPath);
        if (iNumberOfMatchingElements < 0) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList();
        for (int nameCount = getNameCount(); nameCount > iNumberOfMatchingElements; nameCount--) {
            arrayList.add("..");
        }
        while (iNumberOfMatchingElements < smbPathRequireSmbPath.getNameCount()) {
            arrayList.add(smbPathRequireSmbPath.elements.get(iNumberOfMatchingElements));
            iNumberOfMatchingElements++;
        }
        return withNoRoot(arrayList);
    }

    @Override // java.nio.file.Path
    public SmbPath subpath(int i10, int i11) {
        if (isRoot()) {
            throw new IllegalArgumentException();
        }
        if (i10 < 0 || i10 >= this.elements.size()) {
            throw new IllegalArgumentException("beginIndex");
        }
        if (i11 <= i10 || i11 > this.elements.size()) {
            throw new IllegalArgumentException("endIndex");
        }
        return withNoRoot(this.elements.subList(i10, i11));
    }

    @Override // java.nio.file.Path
    public SmbPath toAbsolutePath() {
        if (isAbsolute()) {
            return this;
        }
        throw new IllegalStateException("No default dir");
    }

    @Override // java.nio.file.Path
    public SmbPath toRealPath(LinkOption... linkOptionArr) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.Path
    public SmbPath resolve(Path path) {
        SmbPath smbPathRequireSmbPath = requireSmbPath(path);
        if (smbPathRequireSmbPath.isAbsolute()) {
            return smbPathRequireSmbPath;
        }
        ArrayList arrayList = new ArrayList();
        List<String> list = this.elements;
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.addAll(smbPathRequireSmbPath.elements);
        if (isRoot()) {
            return withThisRoot(arrayList);
        }
        return withSameRoot(arrayList);
    }

    @Override // java.nio.file.Path
    public SmbPath resolveSibling(Path path) {
        Objects.requireNonNull(path);
        SmbPath smbPathRequireSmbPath = requireSmbPath(i.g(path));
        SmbPath parent = getParent();
        return parent == null ? smbPathRequireSmbPath : parent.resolve(path);
    }

    public static SmbPath of(SmbFileSystem smbFileSystem, SmbPath smbPath, String str) {
        return of(smbFileSystem, smbPath, (List<String>) Collections.singletonList(str));
    }

    @Override // java.nio.file.Path
    public SmbPath resolveSibling(String str) {
        return resolveSibling((Path) getFileSystem().getPath(str, new String[0]));
    }

    @Override // java.nio.file.Path
    public boolean startsWith(String str) {
        return startsWith(getFileSystem().getPath(str, new String[0]));
    }

    @Override // java.nio.file.Path
    public boolean endsWith(String str) {
        return endsWith(getFileSystem().getPath(str, new String[0]));
    }

    @Override // java.nio.file.Path
    public SmbPath resolve(String str) {
        return resolve((Path) getFileSystem().getPath(str, new String[0]));
    }
}
