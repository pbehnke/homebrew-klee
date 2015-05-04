class Minisat < Formula
  homepage "https://github.com/stp/"
  head "https://github.com/stp/minisat.git"

  patch :DATA

  def install
  	mkdir 'build'
  	cd 'build' do
  		system "cmake", "..", *std_cmake_args
  		system "make", "install"
	end    
  end
end

__END__
diff --git a/minisat/utils/System.h b/minisat/utils/System.h
index a51d4c2..39858a6 100644
--- a/minisat/utils/System.h
+++ b/minisat/utils/System.h
@@ -34,7 +34,7 @@ namespace Minisat {
 static inline double cpuTime(void); // CPU-time in seconds.
 
 extern double memUsed();            // Memory in mega bytes (returns 0 for unsupported architectures).
-extern double memUsedPeak(bool strictlyPeak = false); // Peak-memory in mega bytes (returns 0 for unsupported architectures).
+extern double memUsedPeak(); // Peak-memory in mega bytes (returns 0 for unsupported architectures).
 
 extern void   setX86FPUPrecision(); // Make sure double's are represented with the same precision
                                     // in memory and registers.